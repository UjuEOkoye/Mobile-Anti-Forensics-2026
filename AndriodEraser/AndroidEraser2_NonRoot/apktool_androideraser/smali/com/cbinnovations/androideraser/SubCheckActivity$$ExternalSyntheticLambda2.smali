.class public final synthetic Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/billingclient/api/PurchasesResponseListener;

.field public final synthetic f$1:Lcom/cbinnovations/androideraser/utils/TinyDB;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/cbinnovations/androideraser/utils/TinyDB;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/billingclient/api/PurchasesResponseListener;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$1:Lcom/cbinnovations/androideraser/utils/TinyDB;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$3:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/billingclient/api/PurchasesResponseListener;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$1:Lcom/cbinnovations/androideraser/utils/TinyDB;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;->f$3:Landroid/view/View$OnClickListener;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/cbinnovations/androideraser/SubCheckActivity;->lambda$checkSubs$1(Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/cbinnovations/androideraser/utils/TinyDB;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
