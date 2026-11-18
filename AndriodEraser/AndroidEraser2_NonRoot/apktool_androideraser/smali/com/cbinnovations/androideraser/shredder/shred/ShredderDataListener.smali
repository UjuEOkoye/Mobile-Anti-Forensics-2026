.class public Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;
.super Ljava/lang/Object;
.source "ShredderDataListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;
    }
.end annotation


# instance fields
.field public onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasShredderListener()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnShredderNewListener(Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    return-void
.end method
