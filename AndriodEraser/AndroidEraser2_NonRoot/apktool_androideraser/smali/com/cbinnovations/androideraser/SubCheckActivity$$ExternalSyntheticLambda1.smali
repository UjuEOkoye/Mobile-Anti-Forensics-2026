.class public final synthetic Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;->f$1:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;->f$1:Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, v1, p1, p2}, Lcom/cbinnovations/androideraser/SubCheckActivity;->lambda$checkSubs$0(Ljava/util/List;Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
