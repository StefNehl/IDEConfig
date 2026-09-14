return {
  {
    "georgeguimaraes/review.nvim",
    version = "*",
    dependencies = {
      "esmuellert/codediff.nvim",
      "MunifTanjim/nui.nvim",
    },
    cmd = { "Review" },
    keys = {
      { "<leader>r", "<cmd>Review<cr>", desc = "Review changes" },
      { "<leader>R", "<cmd>Review commits<cr>", desc = "Review commits" },
    },
    opts = {},
  },
}
