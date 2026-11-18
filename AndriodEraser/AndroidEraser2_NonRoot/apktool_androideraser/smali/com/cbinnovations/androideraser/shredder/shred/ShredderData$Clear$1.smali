.class Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;
.super Ljava/lang/Object;
.source "ShredderData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->clearAndroidFolder(Landroidx/documentfile/provider/DocumentFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

.field final synthetic val$root:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;Landroidx/documentfile/provider/DocumentFile;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 845
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;->val$root:Landroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;->this$0:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 847
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;->val$root:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 850
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 851
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 852
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;->this$0:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->-$$Nest$fgetactivity(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;)Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    move-result-object v0

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 857
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
