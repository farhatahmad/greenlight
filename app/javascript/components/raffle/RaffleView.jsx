
import React, {useCallback} from 'react';
import RaffleCard from "./RaffleCard";
import {Button, Col, Row, Stack} from "react-bootstrap";
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


  const handleClick = useCallback(() => { navigate('/raffle'); }, ['123123123']);

  return (
    <div className="text-center">
      <img src={raffle?.url}  style={{height: '40vh', position: 'absolute', right: '660px'}}/>
      <img src='https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/raffle%20podium.png' style={{height: '60vh'}}/>
      <Button variant="brand" className="ms-auto me-auto p-3 d-block mt-5" onClick={createRaffle.mutate}><h2>Draw Ticket</h2></Button>
      {
        raffle?.ticket && <h1>{raffle?.ticket }</h1>
      }
      <Button variant="brand" className="ms-auto me-auto p-3 d-block mt-5" onClick={handleClick}><h2>Back</h2></Button>

    </div>
  );
}
