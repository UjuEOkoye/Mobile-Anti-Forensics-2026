.class Lcom/cbinnovations/androideraser/settings/Settings$1$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

.field final synthetic val$hasSubscription:[Z


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings$1;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->val$hasSubscription:[Z

    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-cbinnovations-androideraser-settings-Settings$1$1([Z)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "cb_is_premium"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    aput-boolean v0, p1, v2

    if-eqz v0, :cond_0

    .line 136
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11012f

    .line 137
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110130

    .line 138
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/cbinnovations/androideraser/settings/Settings$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/settings/Settings$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$1$1;)V

    const v1, 0x7f110137

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v1, 0x7f110119

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onClick$1$com-cbinnovations-androideraser-settings-Settings$1$1(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 140
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const-class v0, Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/settings/Settings;->finishAffinity()V

    .line 142
    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {p2, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$1$1;->val$hasSubscription:[Z

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$1$1;[Z)V

    invoke-virtual {p1, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
