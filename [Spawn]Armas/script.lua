Grupo = "ACL"
Pegar_Armas = createPickup ( 966.50122070312,-1346.3991699219,13.60000038147, 3, 1252, 1 )

function Entrar_Pickup ( pickup )
    if pickup == Pegar_Armas then
	    cancelEvent ( )
		if isObjectInACLGroup ("user."..getAccountName ( getPlayerAccount ( source ) ), aclGetGroup ( Grupo ) ) then
	    	giveWeapon ( source, 1, 1 )
	    	giveWeapon ( source, 23, 999 ) -- Silenciador
	    	giveWeapon ( source, 31, 2000 ) -- M4
	    	giveWeapon ( source, 3, 999 ) -- Paraquedas
			setPedArmor ( source, 100 )
			setElementHealth ( source, 100 )
		end
	end
end
addEventHandler ( "onPlayerPickupHit", getRootElement ( ), Entrar_Pickup )

function Mensagem_HypeSCR ( Jogador, Texto, Tipo )
    exports.Hype_MensagemDX:outputDx ( Jogador, Texto, Tipo )
end