.class Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;
.super Ljava/lang/Object;
.source "ShredderNotificationService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 214
    new-instance v0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2$1;->start()V

    return-void
.end method
