.class public Lcom/cbinnovations/androideraser/shredder/search/data/privacy/ClipBoard;
.super Ljava/lang/Object;
.source "ClipBoard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4

    .line 67
    const-string v0, ""

    :try_start_0
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 70
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->nextSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->nextSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 71
    invoke-virtual {p0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static get(Landroid/content/ClipboardManager;Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 4

    .line 21
    new-instance p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    sget-object p2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->clipboard:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v1, 0x7f0e0008

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f11004b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 22
    new-array v1, p2, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array p2, p2, [Ljava/lang/Integer;

    aput-object v3, p2, v2

    invoke-direct {v0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v0, v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    if-nez p3, :cond_1

    .line 57
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object p0

    .line 59
    :cond_1
    sget-object p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object p0
.end method
