.class Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;
.super Ljava/lang/Object;
.source "ShredderNotification.java"

# interfaces
.implements Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shred/ShredderNotification;->initShredder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousPercent:J

.field final synthetic this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 70
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->previousPercent:J

    return-void
.end method


# virtual methods
.method public errorOccurred(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetmError(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetmError(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetmError(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onShredderFinished(JZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;)V"
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetmError(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_0
    move-wide v3, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->dismissNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;JZLjava/util/List;)V

    return-void
.end method

.method public onShredderStarted()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    return-void
.end method

.method public onShredderStartedObject(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 77
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->isStopped()Z

    move-result p3

    if-nez p3, :cond_1

    .line 79
    iget-object p3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetcurrentProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I

    move-result p3

    int-to-double v0, p3

    iget-object p3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetmaxProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I

    move-result p3

    int-to-double v2, p3

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x63

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    move-wide v0, v2

    .line 81
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 83
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->updateNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateTotalProgress()V
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->isStopped()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetcurrentProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fputcurrentProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;I)V

    .line 91
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetcurrentProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetmaxProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x63

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-wide v3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->previousPercent:J

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-nez v6, :cond_1

    move-object v2, v5

    .line 97
    :cond_1
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->previousPercent:J

    .line 98
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;->this$0:Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0, v1, v5, v2, v5}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->updateNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
