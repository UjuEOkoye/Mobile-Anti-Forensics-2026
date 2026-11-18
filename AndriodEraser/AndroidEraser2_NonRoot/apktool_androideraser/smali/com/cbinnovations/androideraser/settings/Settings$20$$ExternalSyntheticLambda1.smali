.class public final synthetic Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/cbinnovations/androideraser/settings/Settings$20;


# direct methods
.method public synthetic constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings$20;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda1;->f$0:Lcom/cbinnovations/androideraser/settings/Settings$20;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda1;->f$0:Lcom/cbinnovations/androideraser/settings/Settings$20;

    invoke-virtual {v0, p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings$20;->lambda$onBillingSetupFinished$0$com-cbinnovations-androideraser-settings-Settings$20(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
