.class Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;
.super Landroid/content/BroadcastReceiver;
.source "ShredderNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createBroadcastReceiver(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

.field final synthetic val$shredderNotification:Lcom/cbinnovations/androideraser/shred/ShredderNotification;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V
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

    .line 63
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->val$shredderNotification:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 65
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->val$shredderNotification:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getChanelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->val$shredderNotification:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->isStopped()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->val$shredderNotification:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->stop()V

    .line 68
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->val$shredderNotification:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    const v2, 0x7f11015a

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->updateNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
