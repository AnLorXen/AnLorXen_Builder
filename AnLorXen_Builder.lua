

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
      item = {
        topLevel = "AnLorXen_Builder_CurrentItem", 
        icon = "AnLorXen_Builder_CurrentItem_Icon", 
        zosName = "AnLorXen_Builder_CurrentItem_Title", 
        alias = "AnLorXen_Builder_CurrentItem_Alias", 
        bdAlias = "AnLorXen_Builder_CurrentItem_BdAlias", 
        editAlias = "AnLorXen_Builder_CurrentItem_EditAlias", 

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
        name = "AnLorXen_Builder_CurrentGroup_Title" 
      } 
    } 
  }, 


  state = {
    current = {
      zone = nil, 
      house = nil, 
      delta = { 
        isSet = false, 

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
        name = "", 
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

  -- Returns: number HousingRequestResult result 
  -- result = 0 = HOUSING_REQUEST_RESULT_SUCCESS 
  result = HousingEditorSelectTargettedFurniture() 
  if result == 0 then 
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
  GetControl(_addon.cfg.gui.map.group.topLevel):SetHidden(false) 
  _addon.cfg.state.hidden = false 
end 

_addon.HideBuilderGui = function() 
  -- GetControl("AnLorXen_Builder_GroupList"):SetHidden(true) 
  -- GetControl("AnLorXen_Builder_Diagnostic"):SetHidden(true) 

  GetControl(_addon.cfg.gui.map.item.topLevel):SetHidden(true) 
  GetControl(_addon.cfg.gui.map.group.topLevel):SetHidden(true) 
  _addon.cfg.state.hidden = true 
end 



_addon.BuildCurrentItem = function() 
  local ctrlEditPos = "AnLorXen_Builder_CurrentItem_Position_EditCtrls" 
  local ctrlEditRot = "AnLorXen_Builder_CurrentItem_Rotation_EditCtrls" 
  local ctrlDeltaPos = "AnLorXen_Builder_CurrentItem_Position_DeltaCtrls" 
  local ctrlDeltaRot = "AnLorXen_Builder_CurrentItem_Rotation_DeltaCtrls" 

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

  -- position delta controls
  GetControl(ctrlDeltaPos .. "_DeltaPosX_LabelAxis"):SetText("x:") 
  GetControl(ctrlDeltaPos .. "_DeltaPosX_LabelAxis"):SetColor(1, 0, 0, 1) 
  GetControl(_addon.cfg.gui.map.item.deltaCoordPosX):SetText("-") 
  GetControl(_addon.cfg.gui.map.item.deltaEditPosX):SetText("0") 

  GetControl(ctrlDeltaPos .. "_DeltaPosY_LabelAxis"):SetText("y:") 
  GetControl(ctrlDeltaPos .. "_DeltaPosY_LabelAxis"):SetColor(0, 1, 0, 1) 
  GetControl(_addon.cfg.gui.map.item.deltaCoordPosY):SetText("-") 
  GetControl(_addon.cfg.gui.map.item.deltaEditPosY):SetText("0") 

  GetControl(ctrlDeltaPos .. "_DeltaPosZ_LabelAxis"):SetText("z:") 
  GetControl(ctrlDeltaPos .. "_DeltaPosZ_LabelAxis"):SetColor(0.2, 0.2, 1, 1) 
  GetControl(_addon.cfg.gui.map.item.deltaCoordPosZ):SetText("-") 
  GetControl(_addon.cfg.gui.map.item.deltaEditPosZ):SetText("0") 

  -- rotation delta controls
  GetControl(ctrlDeltaRot .. "_DeltaRotX_LabelAxis"):SetText("x:") 
  GetControl(ctrlDeltaRot .. "_DeltaRotX_LabelAxis"):SetColor(1, 0, 0, 1) 
  GetControl(_addon.cfg.gui.map.item.deltaCoordRotX):SetText("-") 
  GetControl(_addon.cfg.gui.map.item.deltaEditRotX):SetText("0") 

  GetControl(ctrlDeltaRot .. "_DeltaRotY_LabelAxis"):SetText("y:") 
  GetControl(ctrlDeltaRot .. "_DeltaRotY_LabelAxis"):SetColor(0, 1, 0, 1) 
  GetControl(_addon.cfg.gui.map.item.deltaCoordRotY):SetText("-") 
  GetControl(_addon.cfg.gui.map.item.deltaEditRotY):SetText("0") 

  GetControl(ctrlDeltaRot .. "_DeltaRotZ_LabelAxis"):SetText("z:") 
  GetControl(ctrlDeltaRot .. "_DeltaRotZ_LabelAxis"):SetColor(0.2, 0.2, 1, 1) 
  GetControl(_addon.cfg.gui.map.item.deltaCoordRotZ):SetText("-") 
  GetControl(_addon.cfg.gui.map.item.deltaEditRotZ):SetText("0") 
  
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
  item.id = _fid 
  item.name, item.icon, item.fdataId 
    = GetPlacedHousingFurnitureInfo(item.id) 
    
  item.alias.isSet = false 
  item.alias.name = "" 

  if _addon.fids[safeKey] then 
    if _addon.fids[safeKey].alias.isSet then 
      item.alias.isSet = true 
      item.alias.name = _addon.fids[safeKey].alias.name 
    end 
  end 

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
  if _addon.cfg.state.current.item.id == nil then 
    return 
  end 

  GetControl(_addon.cfg.gui.map.item.alias):SetHidden(true) 
  GetControl(_addon.cfg.gui.map.item.bdAlias):SetHidden(false) 
  GetControl(_addon.cfg.gui.map.item.editAlias):SetHidden(false) 

  if _addon.cfg.state.current.item.alias.isSet then 
    GetControl(_addon.cfg.gui.map.item.editAlias)
      :SetText(_addon.cfg.state.current.item.alias.name) 
  else 
    GetControl(_addon.cfg.gui.map.item.editAlias)
      :SetText(_addon.cfg.state.current.item.name) 
  end 
  GetControl(_addon.cfg.gui.map.item.editAlias):TakeFocus() 
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

  -- TODO: check if item exists in group 
  _addon.UpdateCurrentItemInGroup(item.id) 
  -- _addon.ItemList:Refresh() 

end 









_addon.ItemSetCoords = function() 
  -- TODO: check if current item exists

  local ctrl = _addon.cfg.gui.map.item 
  local item = _addon.cfg.state.current.item.updated 
  local coord = _addon.cfg.state.current.delta.coord 

  _addon.cfg.state.current.delta.isSet = true 

  coord.position.x = item.position.x 
  GetControl(ctrl.deltaCoordPosX):SetText(coord.position.x) 
  coord.position.y = item.position.y 
  GetControl(ctrl.deltaCoordPosY):SetText(coord.position.y) 
  coord.position.z = item.position.z 
  GetControl(ctrl.deltaCoordPosZ):SetText(coord.position.z) 

  coord.rotation.x = item.rotation.x 
  GetControl(ctrl.deltaCoordRotX):SetText(
    _addon.RadiansToDegreeInteger(coord.rotation.x)
  ) 
  coord.rotation.y = item.rotation.y 
  GetControl(ctrl.deltaCoordRotY):SetText(
    _addon.RadiansToDegreeInteger(coord.rotation.y)
  ) 
  coord.rotation.z = item.rotation.z 
  GetControl(ctrl.deltaCoordRotZ):SetText(
    _addon.RadiansToDegreeInteger(coord.rotation.z)
  ) 
end 



_addon.ItemGetCoords = function() 
  local item = _addon.cfg.state.current.item.updated 
  local coord = _addon.cfg.state.current.delta.coord 
  local offset = _addon.cfg.state.current.delta.offset 
  local ctrl = _addon.cfg.gui.map.item 

  local newPosX = coord.position.x + offset.position.x 
  GetControl(ctrl.editPosX):SetText(newPosX) 
  GetControl(ctrl.deltaCoordPosX):SetText(newPosX) 
  item.position.x = newPosX 
  coord.position.x = newPosX 

  local newPosY = coord.position.y + offset.position.y 
  GetControl(ctrl.editPosY):SetText(newPosY) 
  GetControl(ctrl.deltaCoordPosY):SetText(newPosY) 
  item.position.y = newPosY 
  coord.position.y = newPosY 

  local newPosZ = coord.position.z + offset.position.z 
  GetControl(ctrl.editPosZ):SetText(newPosZ) 
  GetControl(ctrl.deltaCoordPosZ):SetText(newPosZ) 
  item.position.z = newPosZ 
  coord.position.z = newPosZ 


  local newRotX = coord.rotation.x + offset.rotation.x 
  GetControl(ctrl.editRotX)
    :SetText(_addon.RadiansToDegreeInteger(newRotX)) 
  GetControl(ctrl.deltaCoordRotX)
    :SetText(_addon.RadiansToDegreeInteger(newRotX)) 
  item.rotation.x = newRotX 
  coord.rotation.x = newRotX 
  
  local newRotY = coord.rotation.y + offset.rotation.y 
  GetControl(ctrl.editRotY)
    :SetText(_addon.RadiansToDegreeInteger(newRotY)) 
  GetControl(ctrl.deltaCoordRotY)
    :SetText(_addon.RadiansToDegreeInteger(newRotY)) 
  item.rotation.y = newRotY 
  coord.rotation.y = newRotY 

  local newRotZ = coord.rotation.z + offset.rotation.z 
  GetControl(ctrl.editRotZ)
    :SetText(_addon.RadiansToDegreeInteger(newRotZ)) 
  GetControl(ctrl.deltaCoordRotZ)
    :SetText(_addon.RadiansToDegreeInteger(newRotZ)) 
  item.rotation.z = newRotZ 
  coord.rotation.z = newRotZ 
  

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
      newCoords.rotation.x, 
      newCoords.rotation.y, 
      newCoords.rotation.z
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

  local offset = _addon.cfg.state.current.delta.offset 
  local ctrlDelta = _addon.cfg.gui.map.item 

  offset.position.x = GetControl(ctrlDelta.deltaEditPosX):GetText() 
  offset.position.y = GetControl(ctrlDelta.deltaEditPosY):GetText() 
  offset.position.z = GetControl(ctrlDelta.deltaEditPosZ):GetText() 
  offset.rotation.x 
    = math.rad(GetControl(ctrlDelta.deltaEditRotX):GetText()) 
  offset.rotation.y 
    = math.rad(GetControl(ctrlDelta.deltaEditRotY):GetText()) 
  offset.rotation.z 
    = math.rad(GetControl(ctrlDelta.deltaEditRotZ):GetText()) 

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



    -- if _addon.cfg.state.current.item.id == nil then 
    --   return 
    -- end 
  
    -- GetControl(_addon.cfg.gui.map.item.alias):SetHidden(true) 
    -- GetControl(_addon.cfg.gui.map.item.bdAlias):SetHidden(false) 
    -- GetControl(_addon.cfg.gui.map.item.editAlias):SetHidden(false) 
  
    -- if _addon.cfg.state.current.item.alias.isSet then 
    --   GetControl(_addon.cfg.gui.map.item.editAlias)
    --     :SetText(_addon.cfg.state.current.item.alias.name) 
    -- else 
    --   GetControl(_addon.cfg.gui.map.item.editAlias)
    --     :SetText(_addon.cfg.state.current.item.name) 
    -- end 
    -- GetControl(_addon.cfg.gui.map.item.editAlias):TakeFocus() 
  
end 



_addon.RenameCurrentGroup = function() 

  local ctrl = _addon.cfg.gui.map.group 
  local group = _addon.cfg.state.current.group 
  -- TODO: group.name validation checks 



  -- local ctrl = _addon.cfg.gui.map.item 
  -- local item = _addon.cfg.state.current.item 
  -- local safeKey = zo_getSafeId64Key(item.id) 
  -- -- TODO: alias.name validation checks 

  -- item.alias.name = GetControl(ctrl.editAlias):GetText()
  -- item.alias.isSet = true 

  -- if _addon.fids[safeKey] then 
  --   _addon.fids[safeKey].alias.name = item.alias.name 
  --   _addon.fids[safeKey].alias.isSet = true 
  -- end 

  -- GetControl(ctrl.editAlias):SetHidden(true) 
  -- GetControl(ctrl.bdAlias):SetHidden(true) 

  -- GetControl(ctrl.alias):SetHidden(false) 
  -- GetControl(ctrl.alias):SetText(item.alias.name) 

  -- -- TODO: check if item exists in group 
  -- _addon.UpdateCurrentItemInGroup(item.id)   -- _addon.ItemList:Refresh() 


end 




-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------     GLOBALS     -------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------


-- AnLorXen_Builder_CurrentItem_TestInherit_OnClicked = function(_self) 
--   d(_self:GetName()) 
-- end 


AnLorXen_Builder_CurrentItem_Rename_OnClicked = function(_self) 
  -- d("(964) event: AnLorXen_Builder_CurrentItem_Rename_OnClicked") 
  _addon.ShowItemAliasCtrl() 
end 


AnLorXen_Builder_EditAlias_OnFocusLost = function(_self) 
  -- d("(972) event: AnLorXen_Builder_EditAlias_OnFocusLost") 
  _addon.SetItemAlias()   
end 



AnLorXen_Builder_CurrentItem_SetCoords_OnClicked = function(_self) 
  _addon.ItemSetCoords() 
end 

AnLorXen_Builder_CurrentItem_GetCoords_OnClicked = function(_self) 
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


AnLorXen_Builder_CurrentGroup_Rename_OnClicked = function(_self) 
  d("AnLorXen_Builder_CurrentGroup_Rename_OnClicked") 
  _addon.ShowGroupRenameCtrl() 
end 


AnLorXen_Builder_CurrentGroup_ClearGroup_OnClicked = function(_self) 
  -- d("AnLorXen_Builder_CurrentGroup_ClearGroup_OnClicked") 
  _addon.ClearCurrentGroup() 
end 


AnLorXen_Builder_RemoveItemFromGroup = function(_self) 
  d("event: AnLorXen_Builder_RemoveItem") 
end 

AnLorXen_Builder_ConfirmClearGroup = function(_self) 
  d("event: AnLorXen_Builder_ConfirmClearGroup") 
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


-- Element115