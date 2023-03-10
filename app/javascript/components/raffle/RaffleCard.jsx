// BigBlueButton open source conferencing system - http://www.bigbluebutton.org/.
//
// Copyright (c) 2022 BigBlueButton Inc. and by respective authors (see below).
//
// This program is free software; you can redistribute it and/or modify it under the
// terms of the GNU Lesser General Public License as published by the Free Software
// Foundation; either version 3.0 of the License, or (at your option) any later
// version.
//
// Greenlight is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
// PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License along
// with Greenlight; if not, see <http://www.gnu.org/licenses/>.

import React, {useCallback} from 'react';
import { Card } from 'react-bootstrap';
import PropTypes from 'prop-types';
import {useNavigate} from "react-router-dom";
export default function RaffleCard({ }) {
  const navigate = useNavigate();
  const handleClick = useCallback(() => { navigate('123123123'); }, ['123123123']);

  return (
    <Card id="room-card" className="h-100 card-shadow border-0">
      <Card.Body className="pb-0" onClick={handleClick}>
        <img src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-storage-select-202207-space-gray-wifi?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1670950638028" height={500} width={500} />
      </Card.Body>
      <Card.Footer className="bg-white text-center">
        <h2>Ipad Mini</h2>
      </Card.Footer>
    </Card>
  );
}
