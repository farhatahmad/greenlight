
import React from 'react';
import RaffleCard from "./RaffleCard";
import {Col, Row} from "react-bootstrap";
import RoomCardPlaceHolder from "../rooms/RoomCardPlaceHolder";
import RoomCard from "../rooms/RoomCard";
import NoSearchResults from "../shared_components/search/NoSearchResults";
import useRooms from "../../hooks/queries/rooms/useRooms";
import useRaffles from "../../hooks/queries/raffles/useRaffles";

export default function Raffle() {
  const { data: raffles } = useRaffles();
  console.log(raffles)

  return (
    <>

      <Row className="g-4 mt-4">
        {
          ([...Array(7)].map(() => (
            <Col className="col-md-auto col-xs-12 mt-0 mb-4">
              <RaffleCard />
            </Col>
          )))
        }
      </Row>

    </>
  );
}
