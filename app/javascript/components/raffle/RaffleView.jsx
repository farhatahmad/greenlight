
import React from 'react';
import RaffleCard from "./RaffleCard";
import {Button, Col, Row, Stack} from "react-bootstrap";
import RoomCardPlaceHolder from "../rooms/RoomCardPlaceHolder";
import RoomCard from "../rooms/RoomCard";
import NoSearchResults from "../shared_components/search/NoSearchResults";
import {UserPlusIcon} from "@heroicons/react/24/outline";
import useCreateInvitation from "../../hooks/mutations/admin/manage_users/useCreateInvitation";
import useCreateRaffle from "../../hooks/mutations/raffles/useCreateRaffle";

export default function RaffleView() {
  const createRaffle = useCreateRaffle('12321312312');

  return (
    <div className="text-center">
      <img src='https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/raffle%20podium.png' style={{height: '60vh'}}/>
      <Button variant="brand" className="ms-auto me-auto p-3 d-block mt-5" onClick={createRaffle.mutate}><h2>Draw Ticket</h2></Button>
    </div>
  );
}
