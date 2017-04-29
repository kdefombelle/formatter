${request.setHeader('TradeId', xml["/SWAP/TradeId/text()"])}
<@compress single_line=true>
<#--  general -->
${xml["/SWAP/TradeId"]},
${xml["/SWAP/TradeType"]},
${xml["/SWAP/Env/ENV/Book"]},
${xml["/SWAP/Env/ENV/Desk"]},
${xml["/SWAP/Env/ENV/Cust"]},
${xml["/SWAP/Env/ENV/TradeDate"]},
<#if xml["/SWAP/Env/ENV/Trader"][0]??>${xml["/SWAP/Env/ENV/Trader"]}</#if>,
<#if xml["/SWAP/Env/ENV/StructureId"][0]??>${xml["/SWAP/Env/ENV/StructureId"]}</#if>,
<#if xml["/SWAP/Env/ENV/Company"][0]??>${xml["/SWAP/Env/ENV/Company"]}</#if>,
<#if xml["/SWAP/Env/ENV/TradeStatus"][0]??>${xml["/SWAP/Env/ENV/TradeStatus"]}</#if>,
<#if xml["/SWAP/Env/ENV/Comment1"][0]??>${xml["/SWAP/Env/ENV/Comment1"]}</#if>,
<#if xml["/SWAP/Back/BACK/DoneDate"][0]??>${xml["/SWAP/Back/BACK/DoneDate"]}</#if>,
<#if xml["/SWAP/Back/BACK/DoneTime"][0]??>${xml["/SWAP/Back/BACK/DoneTime"]}</#if>,
<#--  swap specific -->
<#list xml["/SWAP/Assets/ASSET"] as asset>
<#assign test=asset?counter>
${asset.SubType},
${asset.PorS},
${asset.MatDate},
${asset.EffDate},
${asset.Notional},
${asset.Ccy},
<#--  stub section -->
<#if asset.STUB_Date1[0]??>${asset.STUB_Date1}</#if>,
<#if asset.STUB_Rate1[0]??>${asset.STUB_Rate1}</#if>,
<#if asset.STUB_Date2[0]??>${asset.STUB_Date2}</#if>,
<#if asset.STUB_Rate2[0]??>${asset.STUB_Rate2}</#if>,
<#if asset.STUB_Decomp[0]??>${asset.STUB_Decomp}</#if>,
<#if asset.ResetInStub[0]??>${asset.ResetInStub}</#if>,
<#--  interest section -->
<#if asset.INTEREST_FixFloat[0]??>${asset.INTEREST_FixFloat}</#if>,
<#if asset.INTEREST_Rate[0]??>${asset.INTEREST_Rate}</#if>,
<#if asset.INTEREST_Basis[0]??>${asset.INTEREST_Basis}</#if>,
<#if asset.INTEREST_dmIndex[0]??>${asset.INTEREST_dmIndex}</#if>,
<#if asset.INTEREST_Ccy[0]??>${asset.INTEREST_Ccy}</#if>,
<#if asset.INT_REF_Source[0]??>${asset.INT_REF_Source}</#if>,
<#if asset.INT_REF_NNearBy[0]??>${asset.INT_REF_NNearBy}</#if>,
<#if asset.INTEREST_Spread[0]??>${asset.INTEREST_Spread}</#if>,
<#if asset.INTEREST_Term[0]??>${asset.INTEREST_Term}</#if>,

<#if asset.INT_AVG_Compound[0]??>${asset.INT_AVG_Compound}</#if>,
<#if asset.INT_AVG_AnnDay[0]??>${asset.INT_AVG_AnnDay}</#if>,
<#if asset.INT_AVG_Rule[0]??>${asset.INT_AVG_Rule}</#if>,
<#if asset.INT_AVG_CorBGap[0]??>${asset.INT_AVG_CorBGap}</#if>,
<#if asset.INT_RES_NTL_REF_NNearBy[0]??>${asset.INT_RES_NTL_REF_NNearBy}</#if>,
<#if asset.INT_ACC_AccCalc[0]??>${asset.INT_ACC_AccCalc}</#if>,

<#if asset.INT_ACC_Basis[0]??>${asset.INT_ACC_Basis}</#if>,
<#if asset.INTEREST_FwdDecomp[0]??>${asset.INTEREST_FwdDecomp}</#if>,
<#if asset.INT_DIV_Ratio[0]??>${asset.INT_DIV_Ratio}</#if>,
<#if asset.INT_DIV_ReInvest[0]??>${asset.INT_DIV_ReInvest}</#if>,
<#if asset.INTEREST_NRate[0]??>${asset.INTEREST_NRate}</#if>,
<#if asset.INTEREST_NonContig[0]??>${asset.INTEREST_NonContig}</#if>,
<#if asset.INTEREST_UnderIndex[0]??>${asset.INTEREST_UnderIndex}</#if>,
<#--  schedule section -->
${asset.SCHED_Pay_Freq},
<#if asset.SCHED_Pay_AnnDay[0]??>${asset.SCHED_Pay_AnnDay}</#if>,
<#if asset.SCHED_Pay_Rule[0]??>${asset.SCHED_Pay_Rule}</#if>,
<#if asset.SCHED_Pay_IntRule[0]??>${asset.SCHED_Pay_IntRule}</#if>,
<#if asset.SCHED_Pay_Time[0]??>${asset.SCHED_Pay_Time}</#if>,
<#if asset.SCHED_Pay_Cal[0]??>${asset.SCHED_Pay_Cal}</#if>,
<#if asset.SCHED_Reset_Freq[0]??>${asset.SCHED_Reset_Freq}</#if>,
<#if asset.SCHED_Reset_AnnDay[0]??>${asset.SCHED_Reset_AnnDay}</#if>,
<#if asset.SCHED_Reset_Rule[0]??>${asset.SCHED_Reset_Rule}</#if>,
<#if asset.SCHED_Reset_IntRule[0]??>${asset.SCHED_Reset_IntRule}</#if>,
<#if asset.SCHED_Reset_Time[0]??>${asset.SCHED_Reset_Time}</#if>,
<#if asset.SCHED_Reset_Cal[0]??>${asset.SCHED_Reset_Cal}</#if>,
<#--  others section -->
<#if asset.Custom[0]??>${asset.Custom}</#if>,
<#if asset.CROSS_CCY_ForexRate[0]??>${asset.CROSS_CCY_ForexRate}</#if>,
<#if asset.OptionData[0]??>${asset.OptionData}</#if>,
<#if asset.PModel[0]??>${asset.PModel}</#if>,
<#if asset.SubIndex[0]??>${asset.SubIndex}</#if>,
<#if asset.TermDate[0]??>${asset.TermDate}</#if>,
<#if asset.ROLL_NoticeDays[0]??>${asset.ROLL_NoticeDays}</#if>,
<#if asset.INT_RES_RefixMode[0]??>${asset.INT_RES_RefixMode}</#if>,
<#if asset.Audit_Version[0]??>${asset.Audit_Version}</#if>,
<#if asset.AMORT_Sched_AnnDay[0]??>${asset.AMORT_Sched_AnnDay}</#if>,
<#if asset.INTEREST_FundSprd[0]??>${asset.INTEREST_FundSprd}</#if>,
<#if asset.LegRole[0]??>${asset.LegRole}</#if>,
<#if asset.NumEve[0]??>${asset.NumEve}</#if>,
<#if asset.INT_DIV_PayDividend[0]??>${asset.INT_DIV_PayDividend}</#if>,
<#if asset.INT_DIV_HedgeDivRatio[0]??>${asset.INT_DIV_HedgeDivRatio}</#if>,
<#if asset.INT_AVG_Gap[0]??>${asset.INT_AVG_Gap}</#if>,
<#if asset.INT_RES_NTL_Gap[0]??>${asset.INT_RES_NTL_Gap}</#if>,
<#if asset.INT_RES_FX_Gap[0]??>${asset.INT_RES_FX_Gap}</#if>,
<#if asset.SCHED_Pay_Gap[0]??>${asset.SCHED_Pay_Gap}</#if>,
<#if asset.SCHED_Reset_Gap[0]??>${asset.SCHED_Reset_Gap}</#if>,
<#if asset.INT_DIV_Gap[0]??>${asset.INT_DIV_Gap}</#if>,
<#if asset.STUB_StartCal[0]??>${asset.STUB_StartCal}</#if>,
<#if asset.STUB_EndCal[0]??>${asset.STUB_EndCal}</#if>,
<#if asset.LoanRate[0]??>${asset.LoanRate}</#if>,
<#if asset.INTEREST_IntRateType[0]??>${asset.INTEREST_IntRateType}</#if>,
<#if asset.INT_RES_AdjPayment[0]??>${asset.INT_RES_AdjPayment}</#if>,
<#-- cashflows -->
<#list asset.SCHEDULE.Row as flow>${flow.Start};${flow.End};<#if flow.Fixing[0]??>${flow.Fixing}</#if>;${flow.Spread};${flow.Notional};${flow.Date}<#sep>|</#sep></#list>
<#sep>,</#sep>
</#list>
</@compress>