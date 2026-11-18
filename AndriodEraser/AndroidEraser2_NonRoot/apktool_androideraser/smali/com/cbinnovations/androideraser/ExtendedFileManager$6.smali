.class Lcom/cbinnovations/androideraser/ExtendedFileManager$6;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

.field final synthetic val$second:I


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V
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

    .line 250
    iput p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->val$second:I

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x1

    .line 252
    const-string v0, "cb_sort"

    packed-switch p2, :pswitch_data_0

    return-void

    .line 262
    :pswitch_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->val$second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putInt(Ljava/lang/String;I)V

    .line 263
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void

    .line 258
    :pswitch_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->val$second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putInt(Ljava/lang/String;I)V

    .line 259
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void

    .line 254
    :pswitch_2
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->val$second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putInt(Ljava/lang/String;I)V

    .line 255
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void

    .line 266
    :pswitch_3
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->val$second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putInt(Ljava/lang/String;I)V

    .line 267
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->-$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f080050
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
