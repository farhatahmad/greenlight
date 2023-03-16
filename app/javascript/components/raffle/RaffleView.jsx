
import React, {useCallback, useState} from 'react';
import RaffleCard from "./RaffleCard";
import {Button, Card, Col, Form, Row, Stack} from "react-bootstrap";
import RoomCardPlaceHolder from "../rooms/RoomCardPlaceHolder";
import RoomCard from "../rooms/RoomCard";
import NoSearchResults from "../shared_components/search/NoSearchResults";
import {UserPlusIcon} from "@heroicons/react/24/outline";
import useCreateInvitation from "../../hooks/mutations/admin/manage_users/useCreateInvitation";
import useCreateRaffle from "../../hooks/mutations/raffles/useCreateRaffle";
import useRaffles from "../../hooks/queries/raffles/useRaffles";
import {useNavigate, useParams, useSearchParams} from "react-router-dom";
import useRaffle from "../../hooks/queries/raffles/useRaffle";
import Logo from "../shared_components/Logo";
import Confetti from 'react-confetti'

export default function RaffleView() {
  const { id } = useParams();
  const createRaffle = useCreateRaffle(id);
  const {data: raffle} = useRaffle(id);
  const navigate = useNavigate();
  const [ drawing, setDrawing ] = useState(false);
  const [ confetti, setConfetti ] = useState(false);


  const handleClick = useCallback(() => { navigate('/raffle'); }, ['123123123']);

  function handleDraw () {
    setDrawing(true)
    setTimeout(() => {
      createRaffle.mutate()
      setDrawing(false)
      setConfetti(true)

      setTimeout(() => {
        setConfetti(false)
      }, 8000)
    }, 5000)
  }


  return (
    <div className="vertical-center">
      <div className="text-center pb-4">
        <img src="https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/Logo%20-%20Final-2.png" style={{ maxHeight: '200px'}}/>
      </div>
      <Card id="room-card" className="h-100 card-shadow border-0 ms-auto me-auto" style={{ width: '1200px'}} >
        <Card.Body className="pb-0"  >
          <Row>
            <Col className="col-7">
              <div style={{ textAlign: 'center', backgroundSize: 'contain',backgroundImage: 'url(https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/raffle%20podium.png)', height: '70vh'}}>
                <img src={raffle?.url} style={{height: '40vh', maxWidth: '630px'}} className="mt-4"/>
              </div>
            </Col>
            <Col className="col-5 pt-5">
              <div className="text-center mt-5">
                {
                  drawing && (
                    <svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlnsXlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         viewBox="0 0 100 100" enableBackground="new 0 0 0 0" xmlSpace="preserve" style={{color: 'red', paddingLeft: '60px'}} className='d-block ms-auto me-auto' height='250px' width='250px'>
                      <circle fill="#033e89" stroke="none" cx="6" cy="50" r="6">
                        <animateTransform
                          attributeName="transform"
                          dur="1s"
                          type="translate"
                          values="0 15 ; 0 -15; 0 15"
                          repeatCount="indefinite"
                          begin="0.1"/>
                      </circle>
                      <circle fill="#033e89" stroke="none" cx="30" cy="50" r="6">
                        <animateTransform
                          attributeName="transform"
                          dur="1s"
                          type="translate"
                          values="0 10 ; 0 -10; 0 10"
                          repeatCount="indefinite"
                          begin="0.2"/>
                      </circle>
                      <circle fill="#033e89" stroke="none" cx="54" cy="50" r="6">
                        <animateTransform
                          attributeName="transform"
                          dur="1s"
                          type="translate"
                          values="0 5 ; 0 -5; 0 5"
                          repeatCount="indefinite"
                          begin="0.3"/>
                      </circle>
                    </svg>
                  )
                }
                {
                  raffle?.ticket && !drawing && <h1 style={{fontSize: '90px', lineHeight: '250px'}} className="mb-0">{raffle?.ticket }</h1>
                }
                {
                  !raffle?.ticket && !drawing && <div style={{height: '250px'}}></div>
                }
                {
                  confetti && <Confetti
                    width='1200px'
                    height='690px'
                  />
                }
                <Stack direction='vertical' className="mb-2 mt-5">
                  <Button variant="brand" className="mx-2 d-block ms-auto me-auto" onClick={handleDraw}><h1 className="mb-0">Draw Ticket</h1></Button>
                  <Button variant="neutral" className="mx-2 d-block  ms-auto me-auto mt-4" onClick={handleClick}><h1 className="mb-0">Back</h1></Button>
                </Stack>
              </div>
            </Col>
          </Row>

        </Card.Body>
      </Card>
    </div>
  );
}
