.class Lcom/cbinnovations/androideraser/screen/DataScreen$5;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->makeHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$5;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 296
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$5;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/screen/DataScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string p2, "cb_hint_shred_slow_device"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
