
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
-- $Id: tc2191.vhd,v 1.2 2001-10-26 16:30:16 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b00x00p01n02i02191ent IS
END c07s02b00x00p01n02i02191ent;

ARCHITECTURE c07s02b00x00p01n02i02191arch OF c07s02b00x00p01n02i02191ent IS

BEGIN
  TESTING: PROCESS
    type A_ARRAY is array (1 to 2) of CHARACTER;
    variable I : INTEGER;
    variable R : REAL;
    variable B : BOOLEAN;
    variable A : A_ARRAY;
  BEGIN
    A(1 to 2) := A(1) & - A(2);  -- Failure_here
    -- SYNTAX ERROR:  signed operator cannot follow adding operator.
    assert FALSE 
      report "***FAILED TEST: c07s02b00x00p01n02i02191 - Signed operand cannot follow a mutiplying operator."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b00x00p01n02i02191arch;
