.class public Lcom/yelp/android/v/o;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/yelp/android/v/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/m",
        "<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/v/o;-><init>(Landroid/content/res/Resources;Lcom/yelp/android/v/m;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/v/o;->b:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/yelp/android/v/o;->a:Lcom/yelp/android/v/m;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;II)Lcom/yelp/android/r/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lcom/yelp/android/r/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/v/o;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/v/o;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/v/o;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/yelp/android/v/o;->a:Lcom/yelp/android/v/m;

    invoke-interface {v1, v0, p2, p3}, Lcom/yelp/android/v/m;->a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/v/o;->a(Ljava/lang/Integer;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method
