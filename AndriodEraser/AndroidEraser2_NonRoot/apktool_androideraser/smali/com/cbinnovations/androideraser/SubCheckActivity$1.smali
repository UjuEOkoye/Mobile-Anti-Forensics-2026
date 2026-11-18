.class Lcom/cbinnovations/androideraser/SubCheckActivity$1;
.super Ljava/lang/Object;
.source "SubCheckActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/SubCheckActivity;->checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$mBillingClient:Lcom/android/billingclient/api/BillingClient;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBillingSetupFinished$0(Landroid/view/View$OnClickListener;Lcom/android/billingclient/api/BillingClient;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 128
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 124
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$mBillingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/View$OnClickListener;Lcom/android/billingclient/api/BillingClient;)V

    invoke-static {p1, v1, v3}, Lcom/cbinnovations/androideraser/SubCheckActivity;->-$$Nest$smcheckSubs(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient;Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    .line 132
    iget-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->val$mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method
