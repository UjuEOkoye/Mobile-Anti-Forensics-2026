.class Lcom/cbinnovations/androideraser/screen/ShredScreen$1;
.super Ljava/lang/Object;
.source "ShredScreen.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/screen/ShredScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/ShredScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;

    .line 38
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;->getService()Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->-$$Nest$fputmService(Lcom/cbinnovations/androideraser/screen/ShredScreen;Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/ShredScreen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->-$$Nest$fputmService(Lcom/cbinnovations/androideraser/screen/ShredScreen;Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V

    return-void
.end method
