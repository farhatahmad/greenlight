
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

export default function RaffleView() {
  const { id } = useParams();
  const createRaffle = useCreateRaffle(id);
  const {data: raffle} = useRaffle(id);
  const navigate = useNavigate();
  const [ drawing, setDrawing ] = useState(false);

  const handleClick = useCallback(() => { navigate('/raffle'); }, ['123123123']);

  function handleDraw () {
    setDrawing(true)
    setTimeout(() => {
      createRaffle.mutate()
      setDrawing(false)
    }, 5000)
  }


  return (
    <Card id="room-card" className="h-100 card-shadow border-0 ms-auto me-auto" style={{ width: '650px'}} >
      <Card.Body className="pb-0"  >
        <div className="text-center">
          <img src={raffle?.url}  style={{height: '40vh', position: 'absolute', right: '660px'}}/>
          <img src='https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/raffle%20podium.png' style={{height: '60vh'}}/>
          {
            drawing && (
              <svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlnsXlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                   viewBox="0 0 100 100" enableBackground="new 0 0 0 0" xmlSpace="preserve" style={{color: 'red', paddingLeft: '37px'}} className='d-block ms-auto me-auto' height='150px' width='150px'>
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
            raffle?.ticket && !drawing && <h1 style={{lineHeight: '150px'}} className="mb-0">{raffle?.ticket }</h1>
          }
          {
            !raffle?.ticket && !drawing && <div style={{height: '150px'}}></div>
          }
          <div className="mb-2">
            <Button variant="brand" className="mx-2" onClick={handleDraw}><h2 className="mb-0">Draw Ticket</h2></Button>
            <Button variant="neutral" className="mx-2" onClick={handleClick}><h2 className="mb-0">Back</h2></Button>
          </div>
        </div>
      </Card.Body>
    </Card>
  );
}
