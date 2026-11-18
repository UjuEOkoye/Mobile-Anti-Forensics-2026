.class public final synthetic Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;

.field public final synthetic f$1:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, v1, p1}, Lcom/cbinnovations/androideraser/SubCheckActivity$1;->lambda$onBillingSetupFinished$0(Landroid/view/View$OnClickListener;Lcom/android/billingclient/api/BillingClient;Landroid/view/View;)V

    return-void
.end method
