--##--##--##--##--##--## --##--##--## --##--##--##--##--
--##-- /      \                     |  \          --##--
--##-- |  $$$$$$\  ______    ______   \$$         --##--
--##-- | $$   \$$ |      \  /      \ |  \         --##--
--##-- | $$        \$$$$$$\|  $$$$$$\| $$         --##--
--##-- | $$   __  /      $$| $$  | $$| $$         --##--
--##-- | $$__/  \|  $$$$$$$| $$__/ $$| $$         --##--
--##--  \$$    $$ \$$    $$| $$    $$| $$         --##--
--##--   \$$$$$$   \$$$$$$$| $$$$$$$  \$$         --##--
--##--                    | $$                    --##--
--##--                     | $$                   --##--
--##--                      \$$                   --##--
--##--##--##--##--##--## --##--##--## --##--##--##--##--
--##--##--##--##--##--## --##--##--## --##--##--##--##-- 



Citizen.CreateThread(function()
      while true do
            Citizen.Wait(0)
            

            local hasvehicleweapon, vehicleweapon = GetCurrentPedVehicleWeapon(GetPlayerPed(-1))
            if GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -1609580060 then 
            elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 728555052 then
            elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1548507267 then
            elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 37788308 then
            elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1595662460 then
            elseif hasvehicleweapon == 1 then 
            elseif GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_minigun") then
            elseif GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_rayminigun") then
            elseif IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then     



                  RecoilFirstPersonMultiplier(2.0,1.0)

                  Recoil Third Person Multiplier(3.0,2.0)



            elseif IsPedShooting(PlayerPedId()) then 

                  RecoilThirdPersonInCarMultiplier(5.0)


            




           elseif IsPedShooting(PlayerPedId()) and GetVehiclePedIsIn(PlayerPedId(), false) and GetFollowPedCamViewMode() == 4 then


                  RecoilFirstPersonMultiplier(15.0)



           end
      end
end)

function RecoilFirstPersonMultiplier(FirstPersonMultiplier,FirstPersonAimingMultiplier)
      if GetFollowPedCamViewMode() == 4 then 
            local getwidthrecoil = GetGameplayCamRelativeHeading()
            local widhtrecoil = math.random() + math.random() - math.random() - math.random()
            SetGameplayCamRelativeHeading(getwidthrecoil + widhtrecoil * FirstPersonMultiplier)

            local getheightrecoil = GetGameplayCamRelativePitch()
            local heightrecoil = math.random() + math.random()
            SetGameplayCamRelativePitch(getheightrecoil + height recoil * FirstPersonMultiplier, 1.0)
            if IsControlPressed(0, 25) then
                  local getwidthrecoil = GetGameplayCamRelativeHeading()
                  local widhtrecoil = math.random() + math.random() - math.random() - math.random()
                  SetGameplayCamRelativeHeading(getwidthrecoil + widhtrecoil * FirstPersonAimingMultiplier)

                  local getheightrecoil = GetGameplayCamRelativePitch()
                  local heightrecoil = math.random() + math.random() + math.random() + math.random() + math.random()
                  SetGameplayCamRelativePitch(getheightrecoil + heightrecoil * FirstPersonAimingMultiplier, 1.0)
                  Citizen.Wait(0)
            end
      end
end)

function RecoilThirdPersonMultiplier(ThirdPersonMultiplier, ThirdPersonAimingMultiplier)
      if GetFollowPedCamViewMode() ~= 4 then
            local getwidthrecoil = GetGameplayCamRelativeHeading()
            local widhtrecoil = math.random() + math.random() - math.random() - math.random()
            SetGameplayCamRelativeHeading(getwidthrecoil + widhtrecoil * ThirdPersonMultiplier)
            
            local getheightrecoil = GetGameplayCamRelativePitch()
            local heightrecoil = math.random() + math.random()
            SetGameplayCamRelativePitch(getheightrecoil + heightrecoil * ThirdPersonMultiplier, 1.0)
            if IsControlPressed(0, 25) then
                  local getwidthrecoil = GetGameplayCamRelativeHeading()
                  local widhtrecoil = math.random() + math.random() - math.random() - math.random()
                  SetGameplayCamRelativeHeading(getwidthrecoil + widhtrecoil * ThirdPersonAimingMultiplier)

                  local getwidthrecoil = GetGameplayCamRelativePitch()
                  local heightrecoil = math.random() + math.random()
                  SetGameplayCamRelativePitch(getheightrecoil + heightrecoil * ThirdPersonAimingMultiplier, 1.0)
                  Citizen.Wait(0)
            end
      end
end)

function RecoilThirdPersonInCarMultiplier(ThirdPersonInCarMultiplier)
      local getwidthrecoil = GetGameplayCamRelativeHeading()
      local widhtrecoil = math.random() + math.random() - math.random() - math.random()
      SetGameplayCamRelativeHeading(getwidhtrecoil + widhtrecoil * ThirdPersonInCarMultiplier)

      local getheightrecoil = GetGameplayCamRelativePitch ()
      local heightrecoil = math.random() + math.random()
      SetGameplayCamRelativePitch(getheightrecoil + heightrecoil * ThirdPersonInCarMultiplier, 1.0)
end

function RecoilFirstPersonInCarMultiplier(RecoilFirstPersonInCarMultiplier)
      local getwidhtrecoil = GetGameplayCamRelativeHeading)()
      local widhtrecoil = math.random() + math.random() - math.random() - math.random()
      SetGameplayCamRelativeHeading(getwidhtrecoil + widhtrecoil * FirstPersonInCarMultiplier)




end

function StopWeaponSwitching()


      BlockWeaponWheelThisFrame()
      HideHudComponentThisFrame(19)
      HideHudComponentThisFrame(20)
      DisableControlAction(0, 37, true)







      if IsPedGettingIntoAVehicle(GetPlayerPed(-1)) then
            SendNUIMessage({switchtosafe = true})
            Citizen.Wait(2100)
      end

      if IsPedSwimming(GetPlayerPed(-1)) then
            SendNUIMessage({switchtosafe = true})
            Citizen.Wait(2100)
      end

      if IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) then
            DisableControlAction(0, 22, true)
      end

      if IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) then
            DisableControlAction(0, 22, true)
      end

      if IsPlayerFreeAiming(PlayerId()) then
            DisableControlAction(0, 22, true)
      end
end

safetyon = not safetyon
Citizen.CreateThread(function()
      while true do
            Citizen.Wait(0)
            if safetyon then

                  SendNUIMessage({ShowSemiUI = false,ShowAutoUI = false})
                  local hasvehicleweapon, vehicleweapon = GetCurrentPedVehicleWeapon(GetPlayerPed(-1))
                  if GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1609580060 then
                  elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -728555052 then
                  elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1548507267 then
                  elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -37788308 then
                  elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1595662460 then
                  elseif hasvehicleweapon == 1 then
                  else
                        if GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 416676503 then
                              if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_appistol") then
                                    SendNUIMessage({ShowSemiUI = true, ShowAutoUI = true})
                              else
                                    SendNUIMessage({ShowSemiUI = true,ShowAutoUI = false})
                              end
                        elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 690389602 then
                              SendNUIMessage({ShowSemiUI = true,ShowAutoUI = false})
                        elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1212426201 then
                              if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_marksmanrifle") then
                                    SendNUIMessage({ShowSemiUI = true, ShowAutoUI = true})
                              elseif GetSelectedPedWeapon(PlayerPedId()) = GetHashKey("weapon_marksmanrifle_mk2") then
                                    SendNUIMessage({ShowSemiUI = true, ShowAutoUI = true})
                              else
                                    SendNUIMessage({ShowSemiUI = true, ShowAutoUI = false})
                              end
                        elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 860033945 then --Shotgun slot
					if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_assaultshotgun") then
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = true})
					elseif GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_heavyshotgun") then
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = true})
					elseif GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_autoshotgun") then
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = true})
					else
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = false})
					end
				elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -1569042529 then --RPG slot
					if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_minigun") then
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = true})
					elseif GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("weapon_rayminigun") then
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = true})
					else
						SendNUIMessage({ShowSemiUI = true,ShowAutoUI = false})
					end
                        else
                              SendNUIMessage({ShowSemiUI = true, ShowAutoUI = true})
                        end
                        DisablePlayerFiring(PlayerPedId(), true)
                  end
            else
                  StopWeaponSwitching
            end
            if singleshot then
                  StopWeaponSwitching()
                  if IsControlJustPressed(0, 24) then
                        Citizen.Wait(0)
                        while IsControlJustPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                              DisablePlayerFiring(PlayerPedId(), true)
                              Citizen.Wait(0)
                        end
                  end
            end
            if burstshot then
                  StopWeaponSwitching()
                  if IsControlJustPressed(0, 24) then
                        Citizen.Wait(350)
                        while IsControlJustPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                              DisablePlayerFiring(PlayerPedId(), true)
                              Citizen.Wait(0)
                        end
                  end
            end
            if IsControlPressed(0, 19) then


                           local hasvehicleweapon, vehicleweapon = GetCurrentPedVehicleWeapon(GetPlayerPed(-1))
                           if GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) = -1609580060 then
                           elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -728555052 then 
                           elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1548507267 then 
                           elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -37788308 then 
                           elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1595662460 then 
                           elseif hasvehicleweapon == 1 then
                           else
                                  SetNuiFocus(true, true)
                           end
                        end
                  end   
            end
      end)

RegisterNUICallback('close', function()

      SendNUIMessage({
            ShowSemiUI = false,
            WeaponCanBeSemi = true
      })

      SendNUIMessage({
            ShowSemiUI = false,
            WeaponCanBeSemi = true
      })

      SetNuiFocus(false)
end)
RegisterNUICallback('SAFE', function()
      TriggerServerEvent('weaponrecoil:SAFE')
end)

RegisterNUICallback('SEMI', function())
      TriggerServerEvent('weaponrecoil:SAFE')
end)

RegisterNUICallback('BURST', function()
      TriggerServerEvent('weaponrecoil:BURST')
end)

RegisterNUICallback('AUTO', function()
      TriggerServerEvent('weaponrecoil:AUTO')
end)

RegisterNetEvent('weaponrecoil:SAFE')
AddEventHandler('weaponrecoil:SAFE', function()
      if not safetyon then
      safetyon = not safetyon
      end
      if singleshot then
      singleshot = not singleshot
      end
      if burstshot then
      burstshot = not burstshot
      end
      safetyontext = not safetyontext
      Citizen.Wait(2000)
      safetyontext = not safetyontext
end)

RegisterNetEvent('weaponrecoil:SEMI')
AddEventHandler('weaponrecoil:SEMI', function()
      if safetyon then
      safetyon = not safetyon
      end
      if not singleshot then
      singleshot = not singleshot
      end
      if burstshot then
      burstshot = not burstshot
      end
      singleshottext = not singleshottext
      Citizen.Wait(2000)
      singleshottext = not singleshottext
end)

RegisterNetEvent('weaponrecoil:BURST')
AddEventHandler('weaponrecoil:BURST', function()
      if safetyon then
      safetyon = not safetyon
      end
      if singleshot then
      singleshot = not singleshot
      end
      if not burstshot then
      burstshot = not burstshot
      end
      burstshottext = not burstshottext
      Citizen.Wait(2000)
      burstshottext = not burstshottext
end)

RegisterNetEvent('weaponrecoil:AUTO')
AddEventHandler('weaponrecoil:AUTO', function()
      if safetyon then
      safetyon = not safetyon
      end
      if singleshot
      singleshot = not singleshot
      end 
      if burstshot then
      burstshot = not burstshot
      end
      autoshottext = not autoshottext
      Citizen.Wait(2000) 
      autoshottext = not autoshottext
end) 

Citizen.CreateThread(function()



      while true do
            Citizen.Wait(0)
            local scaling = 0.6
            local pos = GetEntityCoords(GetPlayerPed(-1))
            if weapondebug then
                  if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                        local hasvehicleweapon, vehicleweapon = GetCurrentPe(GetPlayerPed(-1))
                        DrawWeaponText3Ds(pos["x"],pos["y"],pos["z"],"~b~Vehicle Selected:~r~" .. vehicleweapon .. "~b~Vehicle Has Weapon:~r~" .. tostring(hasvehicleweapon), scaling)
                  else
                        local group = GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1)))
                        DrawWeaponText3Ds(pos["x"],pos["y"],pos["z"], "~b~Selected:~r~" .. GetSelectedPedWeapon(GetPlayerPed(-1)) .. " ~b~Slot:~r~" .. group,scaling)
                  end
                end
                 if singleshottext then
                         DrawWeaponText3Ds(pos["x"],pos["y"],pos["z"], "FLICKS SWITCH TO SEMI AUTO" ,scaling)
                 end
                 if burstshottext then
                         DrawWeaponText3Ds(pos["x"],pos["y"],pos["z"], "FLICKS SWITCH TO BURST FIRE" ,scaling)
                 end
                 if autoshottext then
                         DrawWeaponText3Ds(pos["x"],pos["y"],pos["z"], "FLICKS SWITCH TO FULLY AUTO" ,scaling)
                 end
                 if safetyontext then
                         DrawWeaponText3Ds(pos["x"],pos["y"],pos["z"], "FLICKS SAFETY SWITCH ON" ,scaling)
                 end    
      end
end)

function DrawWeaponText3Ds(x,y,z, text, scale)
      local onScreen,_x,_y = World3dToScreen2d(x,y,z)
      SetTextScale(scale, scale)
      SetTextFont(10)
      SetTextProportional(1)
      SetTextColour(255, 255, 0, 215)
      SetTextOutline()
      SetTextEntry("STRING")
      SetTextCentre(1)
      AddTextComponentSubstringPlayerName(text)
      DrawText(_x,_y)
      local factor = (string.len(text))
      DrawRect(_x,_y+0.2,factor/84, scale/12, 41, 11, 41, 100)
end

Citizen.CreateThread(function()
      while true do
            Citizen.Wait(0)
            if not IsAimCamActive() or not IsFirstPersonAimCamActive() then
          HideHudComponentThisFrame(14)
      end
      local ammoweaponhash = GetSelectedPedWeapon(GetPlayerPed(-1))
      local ammocount = GetAmmoInPedWeapon(GetPlayerPed(-1),ammoweaponhash)
      if GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1548507267 then
            elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == -37788308 then
            elseif GetWeapontypeGroup(GetSelectedPedWeapon(GetPlayerPed(-1))) == 1595662460 then
      elseif ammocount == 1 then
            DisablePlayerFiring(PlayerId(), true)
      end   
    end
end)

--##--##--##--##--##--## --##--##--## --##--##--##--##--
--##-- /      \                     |  \          --##--
--##-- |  $$$$$$\  ______    ______   \$$         --##--
--##-- | $$   \$$ |      \  /      \ |  \         --##--
--##-- | $$        \$$$$$$\|  $$$$$$\| $$         --##--
--##-- | $$   __  /      $$| $$  | $$| $$         --##--
--##-- | $$__/  \|  $$$$$$$| $$__/ $$| $$         --##--
--##--  \$$    $$ \$$    $$| $$    $$| $$         --##--
--##--   \$$$$$$   \$$$$$$$| $$$$$$$  \$$         --##--
--##--                    | $$                    --##--
--##--                     | $$                   --##--
--##--                      \$$                   --##--
--##--##--##--##--##--## --##--##--## --##--##--##--##--
--##--##--##--##--##--## --##--##--## --##--##--##--##-- 
