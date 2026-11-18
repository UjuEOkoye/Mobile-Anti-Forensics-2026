.class public final synthetic Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cbinnovations/androideraser/settings/Settings$20;

.field public final synthetic f$1:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic f$2:Lcom/android/billingclient/api/QueryProductDetailsResult;


# direct methods
.method public synthetic constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings$20;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;->f$0:Lcom/cbinnovations/androideraser/settings/Settings$20;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;->f$2:Lcom/android/billingclient/api/QueryProductDetailsResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;->f$0:Lcom/cbinnovations/androideraser/settings/Settings$20;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/BillingResult;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;->f$2:Lcom/android/billingclient/api/QueryProductDetailsResult;

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/settings/Settings$20;->lambda$onBillingSetupFinished$1$com-cbinnovations-androideraser-settings-Settings$20(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
