

_addon = {} 
_addon.cfg = { 

  gui = { 
    colors = {
      rowDefault = ZO_ColorDef:New(0.4627, 0.737, 0.7647, 1) 
    }, 

    ctrls = {
      current = {
        active = nil, 
        parent = nil, 
        value = nil, 
        action = "", 
        coord = "", 
        sign = ""
      }, 
    }, 

    increments = {
      current = {
        position = 2, 
        rotation = 2
      }, 
      position = { 
        [1] = { text = "1", value = 1 }, 
        [2] = { text = "10", value = 10 }, 
        [3] = { text = "100", value = 100 }, 
        [4] = { text = "1K", value = 1000 }
      }, 
      rotation = {
        [1] = { text = "1", value = 0.0174533 }, 
        [2] = { text = "5", value = 0.0872665 }, 
        [3] = { text = "30", value = 0.523599 }, 
        [4] = { text = "90", value = 1.5708 }
      }      
    }, 

    map = { 
      delta = {
        topLevel = "AnLorXen_Builder_ItemDelta", 
        name = "AnLorXen_Builder_ItemDelta_Header_Title", 

        coordPosX = "AnLorXen_Builder_ItemDelta_Position_CoordX_LabelCoord", 
        offsetPosX = "AnLorXen_Builder_ItemDelta_Position_CoordX_EditBox", 
        coordPosY = "AnLorXen_Builder_ItemDelta_Position_CoordY_LabelCoord", 
        offsetPosY = "AnLorXen_Builder_ItemDelta_Position_CoordY_EditBox", 
        coordPosZ = "AnLorXen_Builder_ItemDelta_Position_CoordZ_LabelCoord", 
        offsetPosZ = "AnLorXen_Builder_ItemDelta_Position_CoordZ_EditBox", 
        
        coordRotX = "AnLorXen_Builder_ItemDelta_Rotation_CoordX_LabelCoord", 
        offsetRotX = "AnLorXen_Builder_ItemDelta_Rotation_CoordX_EditBox", 
        coordRotY = "AnLorXen_Builder_ItemDelta_Rotation_CoordY_LabelCoord", 
        offsetRotY = "AnLorXen_Builder_ItemDelta_Rotation_CoordY_EditBox", 
        coordRotZ = "AnLorXen_Builder_ItemDelta_Rotation_CoordZ_LabelCoord", 
        offsetRotZ = "AnLorXen_Builder_ItemDelta_Rotation_CoordZ_EditBox"         
      }, 
      item = {
        topLevel = "AnLorXen_Builder_CurrentItem", 
        icon = "AnLorXen_Builder_CurrentItem_Header_Icon", 
        zosName = "AnLorXen_Builder_CurrentItem_Header_Title", 
        alias = "AnLorXen_Builder_CurrentItem_Header_Alias", 
        bdAlias = "AnLorXen_Builder_CurrentItem_Header_BdAlias", 
        editAlias = "AnLorXen_Builder_CurrentItem_Header_EditAlias", 

        incrPos = "AnLorXen_Builder_CurrentItem_Position_IncrCtrls_PosInc", 
        incrRot = "AnLorXen_Builder_CurrentItem_Rotation_IncrCtrls_RotInc", 

        editPosX = "AnLorXen_Builder_CurrentItem_Position_EditCtrls_PosX_EditBox", 
        editPosY = "AnLorXen_Builder_CurrentItem_Position_EditCtrls_PosY_EditBox", 
        editPosZ = "AnLorXen_Builder_CurrentItem_Position_EditCtrls_PosZ_EditBox", 
        editRotX = "AnLorXen_Builder_CurrentItem_Rotation_EditCtrls_RotX_EditBox", 
        editRotY = "AnLorXen_Builder_CurrentItem_Rotation_EditCtrls_RotY_EditBox", 
        editRotZ = "AnLorXen_Builder_CurrentItem_Rotation_EditCtrls_RotZ_EditBox", 

        deltaCoordPosX = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls_DeltaPosX_LabelCoord", 
        deltaEditPosX = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls_DeltaPosX_EditBox", 
        deltaCoordPosY = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls_DeltaPosY_LabelCoord", 
        deltaEditPosY = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls_DeltaPosY_EditBox", 
        deltaCoordPosZ = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls_DeltaPosZ_LabelCoord", 
        deltaEditPosZ = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls_DeltaPosZ_EditBox", 

        deltaCoordRotX = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls_DeltaRotX_LabelCoord", 
        deltaEditRotX = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls_DeltaRotX_EditBox", 
        deltaCoordRotY = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls_DeltaRotY_LabelCoord", 
        deltaEditRotY = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls_DeltaRotY_EditBox", 
        deltaCoordRotZ = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls_DeltaRotZ_LabelCoord", 
        deltaEditRotZ = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls_DeltaRotZ_EditBox"         
      }, 

      group = {
        topLevel = "AnLorXen_Builder_CurrentGroup", 
        name = "AnLorXen_Builder_CurrentGroup_Header_Title", 
        bdName = "AnLorXen_Builder_CurrentGroup_Header_BdGroupName", 
        editName = "AnLorXen_Builder_CurrentGroup_Header_EditGroupName" 
      } 
    } 
  }, 


  
  state = {
    current = {
      zone = nil, 
      house = nil, 

      delta = { 
        isSet = false, 
        position = {
          coord = { x = 0, y = 0, z = 0 }, 
          offset = { x = 0, y = 0, z = 0 }
        }, 
        rotation = {
          coord = { x = 0, y = 0, z = 0 }, 
          offset = { x = 0, y = 0, z = 0 }
        }, 

        coord = {
          position = { x = 0, y = 0, z = 0 }, 
          rotation = { x = 0, y = 0, z = 0 }
        }, 
        offset = {
          position = { x = 0, y = 0, z = 0 }, 
          rotation = { x = 0, y = 0, z = 0 }
        } 
      }, 

      group = {
        name = "<No Current Group>", 
      }, 

      item = { 
        id = nil, 
        fid = nil, 
        fdataId = nil, 
        icon = "", 
        name = "<No Current Item>", 
        alias = {
          isSet = false, 
          name = "" 
        }, 
        initial = {
          position = { x = 0, y = 0, z = 0 }, 
          rotation = { x = 0, y = 0, z = 0 }
        }, 
        updated = {
          position = { x = 0, y = 0, z = 0 }, 
          rotation = { x = 0, y = 0, z = 0 }
        }
      }
    }, 
    hidden = false, 
    lastSafeFid = nil 
  }, 

  testGroup = {
    [1] = {
      id = "00001", 
      status = true, 
      name = "Test Object Number One", 
      posX = 11111, posY = 7000, posZ = 12345, 
      rotX = 0, rotY = 90, rotZ = 180 
  }, 
    [2] = {
      id = "00002", 
      status = false, 
      name = "Test Object Number Two", 
      posX = 22222, posY = 6000, posZ = 23456, 
      rotX = 90, rotY = 180, rotZ = 270 
  }, 
    [3] = {
      id = "00003", 
      status = true, 
      name = "Test Object Number Three", 
      posX = 33333, posY = 5000, posZ = 34567, 
      rotX = 180, rotY = 270, rotZ = 0 
  }, 
    [4] = {
      id = "00004", 
      status = false, 
      name = "Test Object Number Four", 
      posX = 44444, posY = 4000, posZ = 45678, 
      rotX = 0, rotY = 90, rotZ = 180 
  }, 
    [5] = {
      id = "00005", 
      status = true, 
      name = "Test Object Number Five", 
      posX = 55555, posY = 3000, posZ = 56789, 
      rotX = 90, rotY = 180, rotZ = 270		  
    } 
  }
} 

_addon.ItemList = nil
_addon.items = {}


_addon.fids = {} 


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------


ALX_ItemList = ZO_SortFilterList:Subclass()
ALX_ItemList.defaults = {}
ALX_ItemList.SORT_KEYS = { 
  ["id"] = {}, 
  ["status"] = {}, 
  ["name"] = {}, 
  ["posX"] = {},  
  ["posY"] = {},  
  ["posZ"] = {}, 
  ["rotX"] = {},  
  ["rotY"] = {},  
  ["rotZ"] = {} 
} 


ALX_ItemList.New = function(_self)
  local items 
    = ZO_SortFilterList.New(_self, AnLorXen_Builder_CurrentGroup)
	return items
end 


ALX_ItemList.Initialize = function(_self, _ctrl) 
	ZO_SortFilterList.Initialize(_self, _ctrl) 
	_self.sortHeaderGroup:SelectHeaderByKey("name") 
	ZO_SortHeader_OnMouseExit(AnLorXen_Builder_CurrentGroupHeadersName) 

	_self.masterList = {}
 	ZO_ScrollList_AddDataType(
     _self.list, 1, "AnLorXen_Builder_ItemRow", 30, 
     function(_ctrl, data) _self:SetupItemRow(_ctrl, data) end)
 	ZO_ScrollList_EnableHighlight(_self.list, "ZO_ThinListHighlight")
   _self.sortFunction = function(listEntry1, listEntry2) 
    return ZO_TableOrderingFunction(
      listEntry1.data, listEntry2.data, _self.currentSortKey, 
      ALX_ItemList.SORT_KEYS, _self.currentSortOrder
    ) 
    end
	 _self:RefreshData()
end


 ALX_ItemList.BuildMasterList = function(_self)
	_self.masterList = {}
	local items = _addon.items
	for k, v in pairs(items) do
		local data = v
		data["id"] = k
		table.insert(_self.masterList, data)
	end
end 


ALX_ItemList.FilterScrollList = function(_self)
    local scrollData = ZO_ScrollList_GetDataList(_self.list)
    ZO_ClearNumericallyIndexedTable(scrollData)

    for i = 1, #_self.masterList do
        local data = _self.masterList[i]
    	table.insert(scrollData, ZO_ScrollList_CreateDataEntry(1, data))
    end    
end 


ALX_ItemList.SortScrollList = function(_self)
    local scrollData = ZO_ScrollList_GetDataList(_self.list)
    table.sort(scrollData, _self.sortFunction)
end 


ALX_ItemList.SetupItemRow = function(_self, _ctrl, _data)
  _ctrl.data = _data 
  
	_ctrl.status = GetControl(_ctrl, "Status")
	_ctrl.name = GetControl(_ctrl, "Name")
	_ctrl.posX = GetControl(_ctrl, "PosX")
	_ctrl.posY = GetControl(_ctrl, "PosY")
	_ctrl.posZ = GetControl(_ctrl, "PosZ")
	_ctrl.rotX = GetControl(_ctrl, "RotX")
	_ctrl.rotY = GetControl(_ctrl, "RotY")
	_ctrl.rotZ = GetControl(_ctrl, "RotZ")

	_ctrl.status:SetText(_data.status)
	_ctrl.name:SetText(_data.name)
	_ctrl.posX:SetText(_data.posX)
	_ctrl.posY:SetText(_data.posY)
	_ctrl.posZ:SetText(_data.posZ)
	_ctrl.rotX:SetText(_data.rotX)
	_ctrl.rotY:SetText(_data.rotY)
	_ctrl.rotZ:SetText(_data.rotZ)

	_ctrl.status.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.name.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.posX.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.posY.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.posZ.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.rotX.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.rotY.normalColor = _addon.cfg.gui.colors.rowDefault  
	_ctrl.rotZ.normalColor = _addon.cfg.gui.colors.rowDefault 

	ZO_SortFilterList.SetupRow(_self, _ctrl, _data)
end 


ALX_ItemList.Refresh = function(_self)
	_self:RefreshData()
end 



-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------



_addon.RadiansToDegreeInteger = function(_rad) 
  return math.floor(math.deg(_rad) + 0.5) 
end 

_addon.DegreeIntegerToRadians = function(_deg) 
  return math.rad(_deg)
end 



_addon.GetSelectedFid = function() 
  local result, fid 
  -- pick up and drop item to get FurnitureId 
  result = HousingEditorSelectTargettedFurniture() 
  if result == HOUSING_REQUEST_RESULT_SUCCESS then 
    fid = HousingEditorGetSelectedFurnitureId() 
    HousingEditorRequestSelectedPlacement() 
    return fid 
  else 
    return nil 
  end 
end 



_addon.GetItemCoords = function(_fid) 
  local posX, posY, posZ, rotX, rotY, rotZ 
  posX, posY, posZ = HousingEditorGetFurnitureWorldPosition(_fid) 
  rotX, rotY, rotZ = HousingEditorGetFurnitureOrientation(_fid) 
  return {
    posX = posX, posY = posY, posZ = posZ, 
    rotX = rotX, rotY = rotY, rotZ = rotZ
  } 
end 



_addon.GetHousingRequestResult = function(_int) 
  local results = {
    [0] = "SUCCESS", 
    [19] = "NO_SUCH_FURNITURE", 
    [25] = "FURNITURE_ALREADY_SELECTED"
  } 
  if results[_int] then 
    return results[_int] 
  else 
    return _int 
  end 
end 



_addon.WriteToDiagnostic = function(_key, _val, _idx) 
  GetControl("AnLorXen_Builder_Diagnostic_Key_" .. _idx)
    :SetText(_key) 
  if _val == nil then 
    GetControl("AnLorXen_Builder_Diagnostic_Value_" .. _idx)
      :SetText("nil") 
  end 
  if _val == "" then 
    GetControl("AnLorXen_Builder_Diagnostic_Value_" .. _idx)
      :SetText("<empty string>") 
  end 
  if _val == 0 then 
    GetControl("AnLorXen_Builder_Diagnostic_Value_" .. _idx)
      :SetText("0") 
  end 
  if _val then 
    GetControl("AnLorXen_Builder_Diagnostic_Value_" .. _idx)
      :SetText(_val) 
  end     
end 



_addon.ClearDiagnostic = function() 
  for i = 1, 10 do 
    _addon.WriteToDiagnostic("", "", i) 
  end 
end 



-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------



_addon.ShowBuilderGui = function() 
  -- GetControl("AnLorXen_Builder_GroupList"):SetHidden(false) 
  -- GetControl("AnLorXen_Builder_Diagnostic"):SetHidden(false) 

  GetControl(_addon.cfg.gui.map.item.topLevel):SetHidden(false) 
  GetControl(_addon.cfg.gui.map.delta.topLevel):SetHidden(false) 
  GetControl(_addon.cfg.gui.map.group.topLevel):SetHidden(false) 
  _addon.cfg.state.hidden = false 
end 

_addon.HideBuilderGui = function() 
  -- GetControl("AnLorXen_Builder_GroupList"):SetHidden(true) 
  -- GetControl("AnLorXen_Builder_Diagnostic"):SetHidden(true) 

  GetControl(_addon.cfg.gui.map.item.topLevel):SetHidden(true) 
  GetControl(_addon.cfg.gui.map.delta.topLevel):SetHidden(true) 
  GetControl(_addon.cfg.gui.map.group.topLevel):SetHidden(true) 
  _addon.cfg.state.hidden = true 
end 



_addon.BuildCurrentItem = function() 
  local ctrlEditPos = "AnLorXen_Builder_CurrentItem_Position_EditCtrls" 
  local ctrlEditRot = "AnLorXen_Builder_CurrentItem_Rotation_EditCtrls" 
  local ctrlDeltaPos = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls" 
  local ctrlDeltaRot = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls" 

  GetControl(_addon.cfg.gui.map.item.zosName)
    :SetText(_addon.cfg.state.current.item.name)

  -- position increment buttons
  for i, data in ipairs(_addon.cfg.gui.increments.position) do 
    local ctrl = _addon.cfg.gui.map.item.incrPos .. i 
    GetControl(ctrl):SetText(data.text) 
    GetControl(ctrl):SetNormalFontColor(0.3, 0.3, 0.3, 1) 
    GetControl(ctrl):SetState(BSTATE_NORMAL) 
    if i == _addon.cfg.gui.increments.current.position then 
      GetControl(ctrl):SetState(BSTATE_PRESSED) 
    end 
  end 

  -- rotation increment buttons
  for i, data in ipairs(_addon.cfg.gui.increments.rotation) do 
    local ctrl = _addon.cfg.gui.map.item.incrRot .. i 
    GetControl(ctrl):SetText(data.text) 
    GetControl(ctrl):SetNormalFontColor(0.3, 0.3, 0.3, 1) 
    GetControl(ctrl):SetState(BSTATE_NORMAL) 
    if i == _addon.cfg.gui.increments.current.rotation then 
      GetControl(ctrl):SetState(BSTATE_PRESSED) 
    end 
  end 

  -- position edit controls
  GetControl(ctrlEditPos .. "_PosX_Label"):SetText("X:") 
  GetControl(ctrlEditPos .. "_PosX_Label"):SetColor(1, 0, 0, 1) 
  GetControl(ctrlEditPos .. "_PosY_Label"):SetText("Y:") 
  GetControl(ctrlEditPos .. "_PosY_Label"):SetColor(0, 1, 0, 1) 
  GetControl(ctrlEditPos .. "_PosZ_Label"):SetText("Z:") 
  GetControl(ctrlEditPos .. "_PosZ_Label"):SetColor(0.2, 0.2, 1, 1) 

  -- rotation edit controls
  GetControl(ctrlEditRot .. "_RotX_Label"):SetText("X:") 
  GetControl(ctrlEditRot .. "_RotX_Label"):SetColor(1, 0, 0, 1) 
  GetControl(ctrlEditRot .. "_RotY_Label"):SetText("Y:") 
  GetControl(ctrlEditRot .. "_RotY_Label"):SetColor(0, 1, 0, 1) 
  GetControl(ctrlEditRot .. "_RotZ_Label"):SetText("Z:") 
  GetControl(ctrlEditRot .. "_RotZ_Label"):SetColor(0.2, 0.2, 1, 1) 
  
end 



_addon.BuildItemDelta = function() 
  local ctrl = _addon.cfg.gui.map.delta 
  local deltaPos = _addon.cfg.state.current.delta.position 
  local deltaRot = _addon.cfg.state.current.delta.rotation 
  local sPosCoordX = "AnLorXen_Builder_ItemDelta_Position_CoordX_LabelAxis" 
  local sPosCoordY = "AnLorXen_Builder_ItemDelta_Position_CoordY_LabelAxis" 
  local sPosCoordZ = "AnLorXen_Builder_ItemDelta_Position_CoordZ_LabelAxis" 
  local sRotCoordX = "AnLorXen_Builder_ItemDelta_Rotation_CoordX_LabelAxis" 
  local sRotCoordY = "AnLorXen_Builder_ItemDelta_Rotation_CoordY_LabelAxis" 
  local sRotCoordZ = "AnLorXen_Builder_ItemDelta_Rotation_CoordZ_LabelAxis" 

  GetControl(sPosCoordX):SetText("x:") 
  GetControl(sPosCoordX):SetColor(1, 0, 0, 1) 
  GetControl(ctrl.coordPosX):SetText(deltaPos.coord.x) 
  GetControl(ctrl.offsetPosX):SetText(deltaPos.offset.x) 

  GetControl(sPosCoordY):SetText("y:") 
  GetControl(sPosCoordY):SetColor(0, 1, 0, 1) 
  GetControl(ctrl.coordPosY):SetText(deltaPos.coord.y) 
  GetControl(ctrl.offsetPosY):SetText(deltaPos.offset.y) 

  GetControl(sPosCoordZ):SetText("z:") 
  GetControl(sPosCoordZ):SetColor(0.2, 0.2, 1, 1) 
  GetControl(ctrl.coordPosZ):SetText(deltaPos.coord.z) 
  GetControl(ctrl.offsetPosZ):SetText(deltaPos.offset.z) 

  GetControl(sRotCoordX):SetText("x:") 
  GetControl(sRotCoordX):SetColor(1, 0, 0, 1) 
  GetControl(ctrl.coordRotX):SetText(deltaRot.coord.x) 
  GetControl(ctrl.offsetRotX):SetText(deltaRot.offset.x) 

  GetControl(sRotCoordY):SetText("y:") 
  GetControl(sRotCoordY):SetColor(0, 1, 0, 1) 
  GetControl(ctrl.coordRotY):SetText(deltaRot.coord.y) 
  GetControl(ctrl.offsetRotY):SetText(deltaRot.offset.y) 

  GetControl(sRotCoordZ):SetText("z:") 
  GetControl(sRotCoordZ):SetColor(0.2, 0.2, 1, 1) 
  GetControl(ctrl.coordRotZ):SetText(deltaRot.coord.z) 
  GetControl(ctrl.offsetRotZ):SetText(deltaRot.offset.z) 
  
end 



_addon.UpdateCurrentItemDisplay = function() 
  local ctrl = _addon.cfg.gui.map.item 
  local item = _addon.cfg.state.current.item 
  local safeKey = zo_getSafeId64Key(item.id) 

  GetControl(ctrl.icon):SetTexture(item.icon) 
  GetControl(ctrl.zosName):SetText(item.name) 

  if item.alias.isSet then 
    GetControl(ctrl.alias):SetText(item.alias.name) 
  else 
    GetControl(ctrl.alias):SetText("") 
  end 

  GetControl(ctrl.editPosX):SetText(item.updated.position.x) 
  GetControl(ctrl.editPosY):SetText(item.updated.position.y) 
  GetControl(ctrl.editPosZ):SetText(item.updated.position.z) 
  GetControl(ctrl.editRotX)
    :SetText(_addon.RadiansToDegreeInteger(item.updated.rotation.x)) 
  GetControl(ctrl.editRotY)
    :SetText(_addon.RadiansToDegreeInteger(item.updated.rotation.y)) 
  GetControl(ctrl.editRotZ)
    :SetText(_addon.RadiansToDegreeInteger(item.updated.rotation.z)) 
end 



_addon.BuildCurrentGroup = function() 
  GetControl(_addon.cfg.gui.map.group.name)
    :SetText(_addon.cfg.state.current.group.name) 
  _addon.ItemList = ALX_ItemList:New()	
  _addon.ItemList:Refresh() 
end 



_addon.ClearCurrentGroup = function() 
  _addon.fids = {} 
  _addon.items = {} 
  _addon.ItemList:Refresh() 
end 



_addon.RemoveItemFromGroup = function() 
  local safeKey = zo_getSafeId64Key(_addon.cfg.state.current.item.id) 
  _addon.items[safeKey] = nil 
  _addon.fids[safeKey] = nil   
  _addon.ItemList:Refresh() 
end 



_addon.AddCurrentItemToGroup = function() 
  local item, safeKey 

  _addon.SetCurrentItemFromReticle() 
  item = _addon.cfg.state.current.item 
  safeKey = zo_getSafeId64Key(item.id) 

  -- add item to fid table and set alias 
  _addon.fids[safeKey] = { 
    fid = item.id, 
    alias = {
      isSet = false, 
      name = item.name 
    } 
  } 
  if item.alias.isSet then 
    _addon.fids[safeKey].alias.isSet = true 
    _addon.fids[safeKey].alias.name = item.alias.name 
  end 

  -- remove 'current' status from all display items
  for key, item in pairs(_addon.items) do 
    item["status"] = "" 
  end 

  _addon.items[safeKey] = {
    status  = "X", 
    name    = _addon.fids[safeKey].alias.name, 
    posX    = item.initial.position.x, 
    posY    = item.initial.position.y, 
    posZ    = item.initial.position.z, 
    rotX    = _addon.RadiansToDegreeInteger(item.initial.rotation.x), 
    rotY    = _addon.RadiansToDegreeInteger(item.initial.rotation.y), 
    rotZ    = _addon.RadiansToDegreeInteger(item.initial.rotation.z)
  } 

  _addon.ItemList:Refresh() 
end 



_addon.UpdateCurrentItemInGroup = function(_fid) 
  local safeKey = zo_getSafeId64Key(_fid) 
  local item = _addon.cfg.state.current.item

  if _addon.items[safeKey] then 
    -- use fids table key to mark item selected 
    for key, item in pairs(_addon.items) do 
      item["status"] = "" 
    end 
    _addon.items[safeKey].status = "X" 

    if item.alias.isSet then 
      _addon.items[safeKey].name = item.alias.name 
    else 
      _addon.items[safeKey].name = item.name 
    end       

    _addon.items[safeKey].posX = item.updated.position.x 
    _addon.items[safeKey].posY = item.updated.position.y 
    _addon.items[safeKey].posZ = item.updated.position.z 

    _addon.items[safeKey].rotX 
      = _addon.RadiansToDegreeInteger(item.updated.rotation.x) 
    _addon.items[safeKey].rotY 
      = _addon.RadiansToDegreeInteger(item.updated.rotation.y) 
    _addon.items[safeKey].rotZ 
      = _addon.RadiansToDegreeInteger(item.updated.rotation.z) 

    _addon.ItemList:Refresh() 
  end 
end 



_addon.ItemRowMouseEnter = function(_ctrl)
	_addon.ItemList:Row_OnMouseEnter(_ctrl)
end 

_addon.ItemRowMouseExit = function(_ctrl)
	_addon.ItemList:Row_OnMouseExit(_ctrl)
end 



_addon.SetCurrentItemFromReticle = function(_self)   
	if (GetHousingEditorMode() ~= HOUSING_EDITOR_MODE_SELECTION) then 
    d("SetCurrentItemFromReticle: Not in Selection Mode") 
    d("SetCurrentItemFromReticle: Quiet exit.") 
		return
  end 
  
  if (not HousingEditorCanSelectTargettedFurniture()) then 
    d("SetCurrentItemFromReticle: Can Not Select Item (empty reticle)") 
    d("SetCurrentItemFromReticle: Clear Item Display?") 
    return 
  else 
    -- TODO: newFid might reference non-interactive furniture 
    local newFid = _addon.GetSelectedFid() 
    _addon.SetCurrentItem(newFid) 
    _addon.UpdateCurrentItemDisplay() 
    _addon.UpdateCurrentItemInGroup(newFid) 
  end 
end 



_addon.SetCurrentItemFromGroup = function(_self, _btn, _ctrl) 
  local safeKey 
  -- remove 'current' status from all display items 
  for key, item in pairs(_addon.items) do 
    item["status"] = "" 
    -- set clicked item status and set current item 
    if _self.data.id == item["id"] then 
      item["status"] = "X" 
      safeKey = key 
    end 
  end 
  _addon.ItemList:Refresh() 

  -- get current furniture id from fid table
  for key, item in pairs(_addon.fids) do 
    if key == safeKey then 
      _addon.SetCurrentItem(item.fid) 
      _addon.UpdateCurrentItemDisplay() 
    end 
  end 
end 



_addon.SetCurrentItem = function(_fid) 
  local item = _addon.cfg.state.current.item 
  local safeKey = zo_getSafeId64Key(_fid) 

  -- if new item is already current item use its alias 
  if item.id ~= _fid then 
    item.alias.isSet = false 
    item.alias.name = ""     
  end 

  -- if new item exists in current group use its alias 
  if _addon.fids[safeKey] then 
    if _addon.fids[safeKey].alias.isSet then 
      item.alias.isSet = true 
      item.alias.name = _addon.fids[safeKey].alias.name 
    end 
  end 

  item.id = _fid 
  item.name, item.icon, item.fdataId 
    = GetPlacedHousingFurnitureInfo(item.id)     

  item.initial.position.x, 
  item.initial.position.y, 
  item.initial.position.z 
    = HousingEditorGetFurnitureWorldPosition(item.id) 

  item.initial.rotation.x, 
  item.initial.rotation.y, 
  item.initial.rotation.z 
    = HousingEditorGetFurnitureOrientation(item.id) 

  item.updated.position.x = item.initial.position.x
  item.updated.position.y = item.initial.position.y
  item.updated.position.z = item.initial.position.z
  item.updated.rotation.x = item.initial.rotation.x
  item.updated.rotation.y = item.initial.rotation.y
  item.updated.rotation.z = item.initial.rotation.z 
end 




_addon.ShowItemAliasCtrl = function() 
  -- TODO: check for current item 
  local item = _addon.cfg.state.current.item 
  local ctrl = _addon.cfg.gui.map.item 
  if item.id == nil then 
    return 
  end 

  GetControl(ctrl.alias):SetHidden(true) 
  GetControl(ctrl.bdAlias):SetHidden(false) 
  GetControl(ctrl.editAlias):SetHidden(false) 

  if item.alias.isSet then 
    GetControl(ctrl.editAlias):SetText(item.alias.name) 
  else 
    GetControlctrlm.editAlias):SetText(item.name) 
  end 
  GetControl(ctrl.editAlias):TakeFocus() 
end 



_addon.SetItemAlias = function() 
  local ctrl = _addon.cfg.gui.map.item 
  local item = _addon.cfg.state.current.item 
  local safeKey = zo_getSafeId64Key(item.id) 
  -- TODO: alias.name validation checks 

  item.alias.name = GetControl(ctrl.editAlias):GetText()
  item.alias.isSet = true 

  if _addon.fids[safeKey] then 
    _addon.fids[safeKey].alias.name = item.alias.name 
    _addon.fids[safeKey].alias.isSet = true 
  end 

  GetControl(ctrl.editAlias):SetHidden(true) 
  GetControl(ctrl.bdAlias):SetHidden(true) 

  GetControl(ctrl.alias):SetHidden(false) 
  GetControl(ctrl.alias):SetText(item.alias.name) 

  if _addon.cfg.state.current.delta.isSet then 
    GetControl(_addon.cfg.gui.map.delta.name):SetText(item.alias.name) 
  end 

  -- TODO: check if item exists in group 
  _addon.UpdateCurrentItemInGroup(item.id) 
end 



_addon.ToggleItemDeltaCtrl = function() 
  -- TODO: check if current item exists 
  local delta = _addon.cfg.state.current.delta 
  local ctrl = _addon.cfg.gui.map.delta 
  local item = _addon.cfg.state.current.item 
  if delta.isSet then 
    GetControl(ctrl.topLevel):SetHidden(true) 
    delta.isSet = false 
  else 
    if item.alias.isSet then 
      GetControl(ctrl.name):SetText(item.alias.name) 
    else 
      GetControl(ctrl.name):SetText(item.name) 
    end       
    _addon.ItemSetCoords() 
    GetControl(ctrl.topLevel):SetHidden(false) 
    -- delta.isSet = true 
  end 
end 



_addon.ItemSetCoords = function() 
  -- TODO: check if current item exists 
  local ctrlItem = _addon.cfg.gui.map.item 
  local ctrlDelta = _addon.cfg.gui.map.delta 
  local posCoord = _addon.cfg.state.current.delta.position.coord 
  local rotCoord = _addon.cfg.state.current.delta.rotation.coord 
  local item = _addon.cfg.state.current.item.updated   

  _addon.cfg.state.current.delta.isSet = true 

  posCoord.x = item.position.x 
  GetControl(ctrlDelta.coordPosX):SetText(posCoord.x) 
  posCoord.y = item.position.y 
  GetControl(ctrlDelta.coordPosY):SetText(posCoord.y) 
  posCoord.z = item.position.z 
  GetControl(ctrlDelta.coordPosZ):SetText(posCoord.z) 

  rotCoord.x = item.rotation.x 
  GetControl(ctrlDelta.coordRotX)
    :SetText(_addon.RadiansToDegreeInteger(rotCoord.x)) 
  rotCoord.y = item.rotation.y 
  GetControl(ctrlDelta.coordRotY)
    :SetText(_addon.RadiansToDegreeInteger(rotCoord.y)) 
  rotCoord.z = item.rotation.z 
  GetControl(ctrlDelta.coordRotZ)
    :SetText(_addon.RadiansToDegreeInteger(rotCoord.z)) 

end 



_addon.ItemGetCoords = function() 
  local newPosX, newPosY, newPosZ, newRotX, newRotY, newRotZ 
  local posCoord = _addon.cfg.state.current.delta.position.coord 
  local posOffset = _addon.cfg.state.current.delta.position.offset 
  local rotCoord = _addon.cfg.state.current.delta.rotation.coord 
  local rotOffset = _addon.cfg.state.current.delta.rotation.offset 
  local ctrlItem = _addon.cfg.gui.map.item 
  local ctrlDelta = _addon.cfg.gui.map.delta 
  local item = _addon.cfg.state.current.item.updated 
  
  newPosX = posCoord.x + posOffset.x 
  GetControl(ctrlItem.editPosX):SetText(newPosX) 
  GetControl(ctrlDelta.coordPosX):SetText(newPosX) 
  item.position.x = newPosX 
  posCoord.x = newPosX 
  
  newPosY = posCoord.y + posOffset.y 
  GetControl(ctrlItem.editPosY):SetText(newPosY) 
  GetControl(ctrlDelta.coordPosY):SetText(newPosY) 
  item.position.y = newPosY 
  posCoord.y = newPosY 
  
  newPosZ = posCoord.z + posOffset.z 
  GetControl(ctrlItem.editPosZ):SetText(newPosZ) 
  GetControl(ctrlDelta.coordPosZ):SetText(newPosZ) 
  item.position.z = newPosZ 
  posCoord.z = newPosZ 
  
  newRotX = rotCoord.x + rotOffset.x 
  GetControl(ctrlItem.editRotX)
    :SetText(_addon.RadiansToDegreeInteger(newRotX)) 
  GetControl(ctrlDelta.coordRotX)
    :SetText(_addon.RadiansToDegreeInteger(newRotX)) 
  item.rotation.x = newRotX 
  rotCoord.x = newRotX 
  
  newRotY = rotCoord.y + rotOffset.y 
  GetControl(ctrlItem.editRotY)
    :SetText(_addon.RadiansToDegreeInteger(newRotY)) 
  GetControl(ctrlDelta.coordRotY)
    :SetText(_addon.RadiansToDegreeInteger(newRotY)) 
  item.rotation.y = newRotY 
  rotCoord.y = newRotY 
  
  newRotZ = rotCoord.z + rotOffset.z 
  GetControl(ctrlItem.editRotZ)
    :SetText(_addon.RadiansToDegreeInteger(newRotZ)) 
  GetControl(ctrlDelta.coordRotZ)
    :SetText(_addon.RadiansToDegreeInteger(newRotZ)) 
  item.rotation.z = newRotZ 
  rotCoord.z = newRotZ 

  HousingEditorRequestChangePositionAndOrientation(
    _addon.cfg.state.current.item.id, 
    newPosX, newPosY, newPosZ, newRotX, newRotY, newRotZ
  ) 
  _addon.UpdateCurrentItemInGroup(_addon.cfg.state.current.item.id) 
end 



_addon.ItemSpinCtrlClick = function() 
  local currentValue = 0
  local sName = _addon.cfg.gui.ctrls.current.active:GetName() 
  local newCoords = _addon.cfg.state.current.item.updated 
  local posInc = _addon.cfg.gui.increments.current.position 
  local rotInc = _addon.cfg.gui.increments.current.rotation 

  _addon.cfg.gui.ctrls.current.coord = string.sub(sName, 52, 52) 

  if string.sub(sName, 57) == "Up" then
    _addon.cfg.gui.ctrls.current.sign = 1 
  else 
    _addon.cfg.gui.ctrls.current.sign = -1 
  end 

  if string.sub(sName, 49, 51) == "Pos" then 

    if _addon.cfg.gui.ctrls.current.coord == "X" then 
      currentValue = newCoords.position.x 
        + _addon.cfg.gui.increments.position[posInc].value 
        * _addon.cfg.gui.ctrls.current.sign 
      newCoords.position.x = currentValue 
    end 

    if _addon.cfg.gui.ctrls.current.coord == "Y" then 
      currentValue = newCoords.position.y 
        + _addon.cfg.gui.increments.position[posInc].value 
        * _addon.cfg.gui.ctrls.current.sign 
      newCoords.position.y = currentValue 
    end 

    if _addon.cfg.gui.ctrls.current.coord == "Z" then 
      currentValue = newCoords.position.z 
        + _addon.cfg.gui.increments.position[posInc].value 
        * _addon.cfg.gui.ctrls.current.sign 
      newCoords.position.z = currentValue 
    end 

    _addon.cfg.gui.ctrls.current.value:SetText(currentValue) 
    
    HousingEditorRequestChangePosition(
      _addon.cfg.state.current.item.id, 
      newCoords.position.x, 
      newCoords.position.y, 
      newCoords.position.z
    ) 

  else 

    if _addon.cfg.gui.ctrls.current.coord == "X" then 
      currentValue = newCoords.rotation.x 
        + _addon.cfg.gui.increments.rotation[rotInc].value 
        * _addon.cfg.gui.ctrls.current.sign 
      newCoords.rotation.x = currentValue 
    end 

    if _addon.cfg.gui.ctrls.current.coord == "Y" then 
      currentValue = newCoords.rotation.y 
        + _addon.cfg.gui.increments.rotation[rotInc].value 
        * _addon.cfg.gui.ctrls.current.sign 
      newCoords.rotation.y = currentValue 
    end 

    if _addon.cfg.gui.ctrls.current.coord == "Z" then 
      currentValue = newCoords.rotation.z 
        + _addon.cfg.gui.increments.rotation[rotInc].value 
        * _addon.cfg.gui.ctrls.current.sign 
      newCoords.rotation.z = currentValue 
    end 
    
    _addon.cfg.gui.ctrls.current.value:SetText(
      _addon.RadiansToDegreeInteger(currentValue)
    )

    HousingEditorRequestChangeOrientation(
      _addon.cfg.state.current.item.id, 
      newCoords.rotation.x, newCoords.rotation.y, newCoords.rotation.z 
    ) 

  end 
  _addon.UpdateCurrentItemInGroup(_addon.cfg.state.current.item.id) 
end 



_addon.ItemSpinCtrlLostFocus = function() 
  -- TODO: Check for numeric 

  local newItem = _addon.cfg.state.current.item.updated 
  local ctrl = _addon.cfg.gui.map.item 

  newItem.position.x = GetControl(ctrl.editPosX):GetText() 
  newItem.position.y = GetControl(ctrl.editPosY):GetText() 
  newItem.position.z = GetControl(ctrl.editPosZ):GetText() 
  newItem.rotation.x = math.rad(GetControl(ctrl.editRotX):GetText()) 
  newItem.rotation.y = math.rad(GetControl(ctrl.editRotY):GetText()) 
  newItem.rotation.z = math.rad(GetControl(ctrl.editRotZ):GetText()) 

  HousingEditorRequestChangePositionAndOrientation(
    _addon.cfg.state.current.item.id, 
    newItem.position.x, newItem.position.y, newItem.position.z, 
    newItem.rotation.x, newItem.rotation.y, newItem.rotation.z
  )
  _addon.UpdateCurrentItemInGroup(_addon.cfg.state.current.item.id) 
end 



_addon.ItemDeltaCtrlLostFocus = function() 
  -- TODO: Confirm entry is numeric 
  local posOffset = _addon.cfg.state.current.delta.position.offset 
  local rotOffset = _addon.cfg.state.current.delta.rotation.offset 
  local ctrl = _addon.cfg.gui.map.delta 

  posOffset.x = GetControl(ctrl.offsetPosX):GetText() 
  posOffset.y = GetControl(ctrl.offsetPosY):GetText() 
  posOffset.z = GetControl(ctrl.offsetPosZ):GetText() 
  rotOffset.x = math.rad(GetControl(ctrl.offsetRotX):GetText()) 
  rotOffset.y = math.rad(GetControl(ctrl.offsetRotY):GetText()) 
  rotOffset.z = math.rad(GetControl(ctrl.offsetRotZ):GetText()) 

  -- TODO: Confirm delta has changed ? 
  _addon.cfg.state.current.delta.isSet = true 
end 



_addon.ItemIncrementBtnClick = function() 
  local sName = _addon.cfg.gui.ctrls.current.active:GetName() 
  local ctrlPos = _addon.cfg.gui.map.item.incrPos 
  local ctrlRot = _addon.cfg.gui.map.item.incrRot 

  if string.sub(sName, 49, 51) == "Pos" then 
    -- get button index from name 
    _addon.cfg.gui.increments.current.position 
      = 1 * string.sub(sName, 55) 
    -- set state for all buttons 
    for i, data in ipairs(_addon.cfg.gui.increments.position) do 
      GetControl(ctrlPos ..i):SetState(BSTATE_NORMAL) 
    end 
    -- set state for clicked button 
    GetControl(
      ctrlPos .. _addon.cfg.gui.increments.current.position
    ):SetState(BSTATE_PRESSED) 
  end    

  if string.sub(sName, 49, 51) == "Rot" then 
    -- get button index from name 
    _addon.cfg.gui.increments.current.rotation 
      = 1 * string.sub(sName, 55) 
    -- set state for all buttons 
    for i, data in ipairs(_addon.cfg.gui.increments.rotation) do 
      GetControl(ctrlRot .. i):SetState(BSTATE_NORMAL) 
    end
    -- set state for clicked button 
    GetControl(
      ctrlRot .. _addon.cfg.gui.increments.current.rotation
    ):SetState(BSTATE_PRESSED)     
  end 
end 





_addon.ShowGroupRenameCtrl = function() 
  local ctrl = _addon.cfg.gui.map.group 
  local group = _addon.cfg.state.current.group 

  GetControl(ctrl.name):SetHidden(true) 
  GetControl(ctrl.bdName):SetHidden(false) 
  GetControl(ctrl.editName):SetHidden(false) 
  GetControl(ctrl.editName):SetText(group.name) 
  GetControl(ctrl.editName):TakeFocus()   
end 



_addon.SetGroupName = function() 
  local ctrl = _addon.cfg.gui.map.group 
  local group = _addon.cfg.state.current.group 

  -- TODO: group.name validation checks 
  group.name = GetControl(ctrl.editName):GetText() 
  GetControl(ctrl.bdName):SetHidden(true) 
  GetControl(ctrl.editName):SetHidden(true) 
  GetControl(ctrl.name):SetHidden(false) 
  GetControl(ctrl.name):SetText(group.name) 
end 




-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------     GLOBALS     -------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------



AnLorXen_Builder_CurrentItem_Rename_OnClicked = function(_self) 
  -- d("(964) event: AnLorXen_Builder_CurrentItem_Rename_OnClicked") 
  _addon.ShowItemAliasCtrl() 
end 

AnLorXen_Builder_CurrentItem_EditAlias_OnFocusLost = function(_self) 
  -- d("AnLorXen_Builder_EditAlias_OnFocusLost") 
  _addon.SetItemAlias()   
end 

AnLorXen_Builder_CurrentItem_ShowDelta_OnClicked = function(_self) 
  -- d(_self:GetName()) 
  _addon.ToggleItemDeltaCtrl() 
end 

AnLorXen_Builder_CurrentItem_Test_OnClicked = function(_self) 
  d("AnLorXen_Builder_CurrentItem_Test_OnClicked") 
  -- d(_self:GetName()) 
end 




AnLorXen_Builder_ItemDelta_SetCoords_OnClicked = function(_self) 
  _addon.ItemSetCoords() 
end 

AnLorXen_Builder_ItemDelta_GetCoords_OnClicked = function(_self) 
  _addon.ItemGetCoords() 
end 

AnLorXen_Builder_SpinCtrlBtn_OnClicked = function(_self) 
  -- d("event: AnLorXen_Builder_SpinCtrlBtn_OnClicked") 

  _addon.cfg.gui.ctrls.current.active = _self
  _addon.cfg.gui.ctrls.current.parent = _self:GetParent() 
  _addon.cfg.gui.ctrls.current.value = GetControl(
    _addon.cfg.gui.ctrls.current.parent:GetName() .. "_EditBox"
  )
  _addon:ItemSpinCtrlClick()   
end 

AnLorXen_Builder_SpinCtrl_OnFocusLost = function(_self) 
  -- d("event: AnLorXen_Builder_SpinCtrl_OnFocusLost") 
  _addon.ItemSpinCtrlLostFocus() 
end 

AnLorXen_Builder_DeltaCtrl_OnFocusLost = function(_self) 
  -- d("event: AnLorXen_Builder_DeltaCtrl_OnFocusLost") 
  _addon.ItemDeltaCtrlLostFocus()   
end 

AnLorXen_Builder_IncBtn_OnMouseDown = function(_self) 
  -- d("event: AnLorXen_Builder_IncBtn_OnMouseDown") 

  _addon.cfg.gui.ctrls.current.active = _self 
  _addon:ItemIncrementBtnClick() 
end 

AnLorXen_Builder_ItemRow_OnMouseUp = function(_self, _btn, _ctrl) 
  -- d("event: AnLorXen_Builder_ItemRow_OnMouseUp") 
  _addon.SetCurrentItemFromGroup(_self, _btn, _ctrl) 
end 

AnLorXen_Builder_SelectItem = function(_self) 
  -- d("event: AnLorXen_Builder_SelectItem") 
  _addon.SetCurrentItemFromReticle(_self)   
end 

AnLorXen_Builder_AddItemToGroup = function(_self) 
  -- d("event: AnLorXen_Builder_AddItemToGroup") 
  _addon.AddCurrentItemToGroup() 
end 


AnLorXen_Builder_CurrentGroup_Rename_OnMouseUp = function(_self) 
  -- d("AnLorXen_Builder_CurrentGroup_Rename_OnMouseUp") 
  _addon.ShowGroupRenameCtrl() 
end 

AnLorXen_Builder_CurrentGroup_EditGroupName_OnFocusLost = function(_self) 
  -- d("AnLorXen_Builder_CurrentGroup_Rename_OnFocusLost") 
  _addon.SetGroupName() 
end 


AnLorXen_Builder_CurrentGroup_RemoveItem_OnClicked = function(_self) 
  -- d("AnLorXen_Builder_CurrentGroup_RemoveItem_OnClicked") 
  _addon.RemoveItemFromGroup() 
end 

AnLorXen_Builder_CurrentGroup_SaveGroup_OnClicked = function(_self) 
  d("AnLorXen_Builder_CurrentGroup_SaveGroup_OnClicked") 
end 

AnLorXen_Builder_CurrentGroup_ClearGroup_OnClicked = function(_self) 
  -- d("AnLorXen_Builder_CurrentGroup_ClearGroup_OnClicked") 
  _addon.ClearCurrentGroup() 
end 


AnLorXen_Builder_AddGroup = function(_self) 
  d("event: AnLorXen_Builder_AddGroup") 
end 

AnLorXen_Builder_ConfirmRestoreGroup = function(_self) 
  d("event: AnLorXen_Builder_ConfirmRestoreGroup") 
end 

AnLorXen_Builder_ConfirmRemoveGroup = function(_self) 
  d("event: AnLorXen_Builder_ConfirmRemoveGroup") 
end 




-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------     SYSTEM     --------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------




_addon.Init = function(_eventCode, _addOnName) 
  if _addOnName ~= "AnLorXen_Builder" then return end   
  
  _addon.BuildCurrentItem() 

  _addon.BuildItemDelta() 

  _addon.BuildCurrentGroup() 
    
  _addon.ClearDiagnostic() 

end 



ZO_CreateStringId("SI_BINDING_NAME_SELECT_ITEM", "Set Current Item") 
ZO_CreateStringId("SI_BINDING_NAME_ADD_ITEM", "Add Item to Group") 
ZO_CreateStringId("SI_BINDING_NAME_REMOVE_ITEM", "Remove Item from Group") 
ZO_CreateStringId("SI_BINDING_NAME_CLEAR_GROUP", "Clear Items from Group") 
ZO_CreateStringId("SI_BINDING_NAME_ADD_GROUP", "Add Group") 
ZO_CreateStringId("SI_BINDING_NAME_RESTORE_GROUP", "Restore Group") 
ZO_CreateStringId("SI_BINDING_NAME_REMOVE_GROUP", "Remove Group") 



SLASH_COMMANDS["/rl"] = function()	ReloadUI("ingame") end 


SLASH_COMMANDS["/ll"] = function() 
  if _addon.cfg.state.hidden then 
    _addon.ShowBuilderGui() 
  else 
    _addon.HideBuilderGui() 
  end 
end 

EVENT_MANAGER:RegisterForEvent(
  "_addon.Init", EVENT_ADD_ON_LOADED , _addon.Init 
)
-- EVENT_MANAGER:RegisterForEvent(
--   "_addon.RETICLE_TARGET_CHANGED", 
--   EVENT_RETICLE_TARGET_CHANGED, 
--   _addon.TrackUnit
-- )

