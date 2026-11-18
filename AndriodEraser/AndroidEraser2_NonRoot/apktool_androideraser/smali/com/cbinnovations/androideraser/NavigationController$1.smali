.class Lcom/cbinnovations/androideraser/NavigationController$1;
.super Ljava/lang/Object;
.source "NavigationController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/NavigationController;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/NavigationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$1;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;

    .line 45
    iget-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$1;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;->getService()Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/NavigationController;->-$$Nest$fputmService(Lcom/cbinnovations/androideraser/NavigationController;Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$1;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/NavigationController;->-$$Nest$fputmService(Lcom/cbinnovations/androideraser/NavigationController;Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V

    return-void
.end method
