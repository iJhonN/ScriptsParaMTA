function showClientImage()
   guiCreateStaticImage( 0.468, 0.01, 0.07,  0.13, "logo.png", true, nil)
end

addEventHandler( "onClientResourceStart", getResourceRootElement( getThisResource() ), showClientImage )