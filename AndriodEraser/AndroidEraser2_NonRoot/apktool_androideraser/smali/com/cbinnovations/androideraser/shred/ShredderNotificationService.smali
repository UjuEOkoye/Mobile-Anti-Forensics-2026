.class public Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;
.super Landroid/app/Service;
.source "ShredderNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mShredderNotificationQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/cbinnovations/androideraser/shred/ShredderNotification;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private notificationManager:Landroid/app/NotificationManager;

.field private runningForeground:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmShredderNotificationQueue(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationManager(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$ShredderNotificationServiceBinder;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->runningForeground:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    return-void
.end method

.method private createBroadcastReceiver(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V
    .locals 3

    .line 63
    new-instance v0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$1;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 75
    new-instance v1, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getChanelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/Utility$$ExternalSyntheticApiModelOutline0;->m(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getChanelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createReportNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;JZLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shred/ShredderNotification;",
            "JZ",
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v2, "generate_report"

    const/4 v10, 0x1

    invoke-virtual {v0, v2, v10}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/report/Report;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/report/Report;->generateID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getError()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/cbinnovations/androideraser/shredder/report/Report;-><init>(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Ljava/util/Date;JZLjava/lang/String;ILjava/util/List;)V

    .line 174
    invoke-static {p0, v0}, Lcom/cbinnovations/androideraser/shredder/report/Report;->add(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/report/Report;)V

    .line 176
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 178
    invoke-static {}, Lcom/cbinnovations/androideraser/utils/Utility$$ExternalSyntheticApiModelOutline0;->m()V

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Report"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/cbinnovations/androideraser/utils/Utility$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 179
    iget-object v4, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v4, v3}, Lcom/cbinnovations/androideraser/utils/Utility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 180
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 183
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0e0017

    .line 185
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v6, 0x7f110134

    .line 186
    invoke-virtual {p0, v6}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 187
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 194
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V
    .locals 9

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 85
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "android_eraser_process"

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0e0017

    .line 87
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f11012c

    .line 88
    invoke-virtual {p0, v7}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const-string v6, "< 5 min"

    .line 89
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 90
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getMaxProgress()I

    move-result v6

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getCurrentProgress()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 97
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x2

    .line 98
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f110023

    .line 102
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getChanelId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/high16 v2, 0x1040000

    .line 106
    invoke-virtual {p0, v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 109
    const-string v0, "Shred Process"

    const/4 v1, 0x4

    invoke-static {v4, v0, v1}, Lcom/cbinnovations/androideraser/utils/Utility$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/cbinnovations/androideraser/utils/Utility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 111
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->runningForeground:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationID()I

    move-result v1

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 118
    :cond_1
    iput-boolean v8, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->runningForeground:Z

    .line 119
    invoke-virtual {p1, v8}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->setRunningInForeground(Z)V

    .line 120
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationID()I

    move-result v0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 123
    :goto_0
    invoke-virtual {p1, v3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->setNotificationBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method public createProcess(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-direct {v0, p0, p1, p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createBroadcastReceiver(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    .line 53
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->start()V

    return-void
.end method

.method public createProcessWithPrepare(Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;",
            ")V"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createBroadcastReceiver(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    return-void
.end method

.method public dismissNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;JZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shred/ShredderNotification;",
            "JZ",
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->isRunningInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->setRunningInForeground(Z)V

    .line 150
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->runningForeground:Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 154
    invoke-direct/range {p0 .. p5}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createReportNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;JZLjava/util/List;)V

    move-object p2, p1

    move-object p1, p0

    .line 156
    iget-object p3, p1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 158
    :try_start_0
    iget-object p3, p1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    iget-object p3, p1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    iget-object p2, p1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mShredderNotificationQueue:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 165
    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->stopForeground(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->stopSelf()V

    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 210
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService$2;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public updateNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    if-eqz p3, :cond_1

    .line 129
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_1
    if-eqz p4, :cond_2

    .line 130
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 134
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getMaxProgress()I

    move-result p2

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getCurrentProgress()I

    move-result p3

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->isStopped()Z

    move-result p4

    invoke-virtual {v0, p2, p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 137
    iget-boolean p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->runningForeground:Z

    if-eqz p2, :cond_5

    .line 138
    iget-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationID()I

    move-result p1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_5
    const/4 p2, 0x1

    .line 140
    iput-boolean p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->runningForeground:Z

    .line 141
    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->setRunningInForeground(Z)V

    .line 142
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->getNotificationID()I

    move-result p1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
