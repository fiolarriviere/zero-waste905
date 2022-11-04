import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience

import { Slideover } from "tailwindcss-stimulus-components"
application.register('slideover', Slideover)

application.debug = false
window.Stimulus   = application

export { application }
