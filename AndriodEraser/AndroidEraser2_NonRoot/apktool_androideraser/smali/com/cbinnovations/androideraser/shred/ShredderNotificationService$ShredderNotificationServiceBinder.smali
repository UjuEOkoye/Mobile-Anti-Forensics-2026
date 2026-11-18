.class public Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;
.super Landroid/os/Binder;
.source "ShredderNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShredderNotificationServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;


# direct methods
.method public constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    return-object v0
.end method
