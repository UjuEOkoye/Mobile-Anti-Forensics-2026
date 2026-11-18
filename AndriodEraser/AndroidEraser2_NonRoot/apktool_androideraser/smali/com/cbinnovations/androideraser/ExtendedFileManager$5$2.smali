.class Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 277
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const/16 v0, 0x1f

    const-string v1, "cb_sort"

    invoke-virtual {p1, v1, v0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    return-void

    .line 284
    :pswitch_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putInt(Ljava/lang/String;I)V

    .line 285
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void

    .line 280
    :pswitch_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putInt(Ljava/lang/String;I)V

    .line 281
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$5$2;->this$1:Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p1, v2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f08004e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
