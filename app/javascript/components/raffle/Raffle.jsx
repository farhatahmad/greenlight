
import React from 'react';
import RaffleCard from "./RaffleCard";
import {Col, Row} from "react-bootstrap";
import useRaffles from "../../hooks/queries/raffles/useRaffles";

export default function Raffle() {
  const { data: raffles } = useRaffles();

  return (
    <>
      <div className="text-center">
        <img src="https://raw.githubusercontent.com/farhatahmad/greenlight/raffle/app/assets/images/Logo%20-%20Final-2.png" style={{ maxHeight: '200px'}}/>
        <h1 className="text-brand mb-3">ABCCO Annual Fundraising Raffle</h1>
      </div>


      <div>
        <Row className="g-4 mt-4">
          {
            (raffles?.map((raffle) => (
              <Col className="col-md-auto col-xs-12 mt-0 mb-4">
                <RaffleCard raffle={raffle}/>
              </Col>
            )))
          }
        </Row>
      </div>


    </>
  );
}
