.class Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;
.super Ljava/lang/Thread;
.source "ShredderNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 214
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->val$thread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->val$ex:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->this$1:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->this$1:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->-$$Nest$fgetmShredderNotificationQueue(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    .line 217
    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->stop()V

    .line 218
    iget-object v2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->this$1:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

    iget-object v2, v2, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->-$$Nest$fgetnotificationManager(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationID()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->this$1:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->stopForeground(Z)V

    .line 221
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->this$1:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->stopSelf()V

    .line 222
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->val$thread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->val$ex:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
