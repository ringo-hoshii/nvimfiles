local animate = require("mini.animate")
animate.setup({
    cursor = {
	timing = animate.gen_timing.linear({ duration = 30, unit = 'total' })
    }
})
