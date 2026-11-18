.class Lcom/cbinnovations/androideraser/settings/Settings$16;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->dialogFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/settings/Settings;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$16;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 376
    const-string p1, "android.intent.action.VIEW"

    .line 0
    const-string p2, "market://details?id="

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$16;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$16;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/settings/Settings;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 378
    :catch_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$16;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbinnovations/androideraser/settings/Settings$16;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/settings/Settings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
