module.exports = {
  launchpads: [
    { name: "Launchpad X", options: ["Patch Programmer Mode", "Do a stinker poop"] },
    { name: "Launchpad Mini MK3", options: ["Patch Programmer Mode"] },
  ],
  callback: e => {
    console.log(e)
    window.Module._patch_firmware() // how to detect if this errored out? a) no firmware/output.syx file, b) something will print to stderr
    console.log(FS.readFile("firmware/output.syx"))
    alert("open console nerd")
  },
}
