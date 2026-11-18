.class public Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;
.super Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;,
        Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->context:Landroid/content/Context;

    return-void
.end method

.method public static clear(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 96
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 5

    .line 37
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->contacts:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v3, 0x7f0e000a

    .line 38
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f110067

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v3, "android.permission.READ_CONTACTS"

    const-string v4, "android.permission.WRITE_CONTACTS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    .line 42
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getPermission()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 45
    new-array p1, v4, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const/4 p2, 0x0

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-object v0

    .line 47
    :cond_1
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0

    .line 50
    :cond_2
    sget-object p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    return-object v0
.end method

.method public static search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 13

    .line 57
    const-string v0, "lookup"

    const-string v1, "data1"

    const-string v2, "display_name"

    const-string v3, "_id"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v12, "display_name ASC"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    :cond_0
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 79
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v11, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;

    invoke-direct {v11, v7, v8, v9, v10}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 88
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_3
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    const v1, 0x7f110067

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :goto_1
    if-eqz v6, :cond_4

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_4
    throw p0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 108
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->searchProcess:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;

    .line 109
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
