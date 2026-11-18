.class Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search$1;
.super Ljava/lang/Object;
.source "AppCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search$1;->this$0:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)I
    .locals 2

    .line 140
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getTotalByteSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getTotalByteSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 138
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    check-cast p2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search$1;->compare(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)I

    move-result p1

    return p1
.end method
