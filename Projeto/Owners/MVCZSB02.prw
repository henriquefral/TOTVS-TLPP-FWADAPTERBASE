#INCLUDE "TOTVS.CH"
#INCLUDE "FWMVCDEF.CH"
/*/{Protheus.doc} MVCZSB02
MVC principal para invocar o browse.
@type function
@version 1.0
@author Henrique Freitas Alves
@since 29/01/2024
/*/
User Function MVCZSB02()

Local o_MBrowse := Nil

o_MBrowse := FWMBrowse():New()
o_MBrowse:SetAlias("ZSB")
o_MBrowse:SetDescription("Tutores")
o_MBrowse:SetCanSaveArea(.T.)
o_MBrowse:SetMenudef("MVCZSB02")
o_MBrowse:Activate()

Return Nil
/*/{Protheus.doc} MenuDef
O menu padrão do model.
@type function
@version 1.0
@author Henrique Freitas Alves
@since 29/01/2024
@return a_Rotina, As rotinas do model def.
/*/
Static Function MenuDef()

Local a_Rotina := {}

ADD OPTION a_Rotina TITLE "Opção 1" ACTION "PesqBrw" 			OPERATION 1 ACCESS 0 // "Pesquisar"
ADD OPTION a_Rotina TITLE "Opção 2"	ACTION "VIEWDEF.MVCZSB02" 	OPERATION 2	ACCESS 0 // "Visualizar"
ADD OPTION a_Rotina TITLE "Opção 3"	ACTION "VIEWDEF.MVCZSB02" 	OPERATION 8 ACCESS 0 // "Imprimir"

Return ( a_Rotina )
/*/{Protheus.doc} ModelDef
A regra de negócio do fonte.
@type function
@version 1.0
@author Henrique Freitas Alves
@since 29/01/2024
@return object, o_Model => O objeto definido com as regras.
/*/
Static Function ModelDef() as Object

Local o_Model     as Object
Local o_StructZSB := FWFormStruct(1,'ZSB',/*bAvalCampo*/,/*lViewUsado*/) as Object

o_Model := MPFormModel():New("ZSB02",/*bPreValidacao*/,/*bPosValid*/,/*bCommit*/,/*bCancel*/)
o_Model:AddFields("ZSBMASTER",/*cOwner*/,o_StructZSB,/*bPreValidacao*/,/*bPosValidacao*/,/*bCarga*/)
o_Model:GetModel("ZSBMASTER"):SetDescription("ZSB")
o_Model:SetPrimaryKey({"ZSB_FILIAL", "ZSB_ID"})
o_Model:SetDescription("Tutores")

Return ( o_Model )
/*/{Protheus.doc} ViewDef
A visualização padrão do model.
@type function
@version 1.0
@author Henrique Freitas Alves
@since 29/01/2024
/*/
Static Function ViewDef()

Local o_View        := Nil
Local o_Model 		:= ModelDef()
Local o_StructZSB	:= FWFormStruct(2,"ZSB",/*bAvalCampo*/,/*lViewUsado*/)

o_View := FWFormView():New()
o_View:SetModel(o_Model)
o_View:AddField("VIEW_ZSB", o_StructZSB, "ZSBMASTER")

Return ( o_View )
