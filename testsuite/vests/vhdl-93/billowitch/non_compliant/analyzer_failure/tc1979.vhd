
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc1979.vhd,v 1.2 2001-10-26 16:30:14 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b02x00p01n02i01979ent IS
END c07s02b02x00p01n02i01979ent;

ARCHITECTURE c07s02b02x00p01n02i01979arch OF c07s02b02x00p01n02i01979ent IS

BEGIN
  TESTING: PROCESS
    variable NUM1 : BIT_VECTOR(0 to 1)    := B"01";
    variable NUM2 : STRING(1 to 2)       := "01";
  BEGIN
    if (NUM1 = NUM2) then -- Failure_here
      NULL;
    end if;
    assert FALSE 
      report "***FAILED TEST: c07s02b02x00p01n02i01979 - Operands of a relational operator should be of the same type."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b02x00p01n02i01979arch;
