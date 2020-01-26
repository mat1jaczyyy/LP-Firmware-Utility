module.exports = {
  launchpads: [
    { name: "Launchpad X", options: ["Patch Programmer Mode", "Do a stinker poop"] },
    { name: "Launchpad Mini MK3", options: ["Patch Programmer Mode"] },
  ],
  callback: e => {
    console.log(e)
    window.Module._test_function()
  },
}
