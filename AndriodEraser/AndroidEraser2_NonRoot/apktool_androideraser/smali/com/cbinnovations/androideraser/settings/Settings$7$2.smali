.class Lcom/cbinnovations/androideraser/settings/Settings$7$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const p1, 0x7f0801b3

    .line 228
    const-string v0, "cb_default_method"

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    return-void

    .line 245
    :pswitch_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;

    invoke-direct {p2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 239
    :pswitch_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;

    invoke-direct {p2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 242
    :pswitch_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;

    invoke-direct {p2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 233
    :pswitch_3
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;

    invoke-direct {p2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 236
    :pswitch_4
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;

    invoke-direct {p2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 230
    :pswitch_5
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    new-instance p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;

    invoke-direct {p2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$2;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->removeKey(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f08000c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
