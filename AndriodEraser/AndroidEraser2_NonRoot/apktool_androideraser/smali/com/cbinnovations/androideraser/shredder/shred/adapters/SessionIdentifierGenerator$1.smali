.class Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;
.super Ljava/lang/Object;
.source "SessionIdentifierGenerator.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->scanMedia(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 92
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;->val$file:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->-$$Nest$smremove(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
