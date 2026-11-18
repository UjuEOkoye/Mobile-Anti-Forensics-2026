.class Lcom/cbinnovations/androideraser/ExtendedFileManager$4$1;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->itemChanged(Landroidx/documentfile/provider/DocumentFile;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$4;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$4;)V
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
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4$1;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$4;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
