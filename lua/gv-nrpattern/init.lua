-- Get the default dict of patterns
local patterns = require"nrpattern.default"

-- The dict uses the pattern as key, and has a dict of options as value.
-- To add a new pattern, for example the VHDL x"aabb" format.
patterns['()x"(%x+)"'] = {
  base = 16, -- Hexadecimal
  format = '%sx"%s"', -- Output format
  priority = 15, -- Determines order in pattern matching
}

-- Add a cyclic pattern (toggles between yes and no)
patterns[{"yes", "no"}] = {priority = 5}
patterns[{"true", "false"}] = {priority = 5}
patterns[{"True", "False"}] = {priority = 5}

-- Call the setup to enable the patterns
require"nrpattern".setup(patterns)
