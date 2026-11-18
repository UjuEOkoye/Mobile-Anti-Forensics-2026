.class Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

.field final synthetic val$first:I

.field final synthetic val$second:I


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$5;II)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->val$first:I

    iput p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->val$second:I

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 291
    iget p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->val$first:I

    iget v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->val$second:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "cb_sort"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fgetclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->update()V

    .line 293
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    :cond_0
    return-void
.end method
