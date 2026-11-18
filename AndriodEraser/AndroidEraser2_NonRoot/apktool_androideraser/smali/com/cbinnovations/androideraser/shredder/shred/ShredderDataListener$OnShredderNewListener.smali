.class public interface abstract Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;
.super Ljava/lang/Object;
.source "ShredderDataListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShredderNewListener"
.end annotation


# virtual methods
.method public abstract errorOccurred(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)V
.end method

.method public abstract onShredderFinished(JZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onShredderStarted()V
.end method

.method public abstract onShredderStartedObject(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updateTotalProgress()V
.end method
