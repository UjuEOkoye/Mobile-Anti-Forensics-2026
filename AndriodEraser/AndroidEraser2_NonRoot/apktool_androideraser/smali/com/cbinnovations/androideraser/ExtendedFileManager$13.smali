.class Lcom/cbinnovations/androideraser/ExtendedFileManager$13;
.super Ljava/lang/Object;
.source "ExtendedFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ExtendedFileManager;->sortContent(Landroidx/documentfile/provider/DocumentFile;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/documentfile/provider/DocumentFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 472
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager$13;->this$0:Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/documentfile/provider/DocumentFile;Landroidx/documentfile/provider/DocumentFile;)I
    .locals 2

    .line 474
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

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

    .line 472
    check-cast p1, Landroidx/documentfile/provider/DocumentFile;

    check-cast p2, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager$13;->compare(Landroidx/documentfile/provider/DocumentFile;Landroidx/documentfile/provider/DocumentFile;)I

    move-result p1

    return p1
.end method
