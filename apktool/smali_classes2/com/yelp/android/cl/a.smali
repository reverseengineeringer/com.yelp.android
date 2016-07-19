.class public Lcom/yelp/android/cl/a;
.super Lcom/yelp/android/ui/util/w;
.source "ComposeMessageFriendsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cl/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/cl/a;->a:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Lcom/yelp/android/cl/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/cl/a;->a(Ljava/util/Collection;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/cl/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/cl/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/cl/a$a;)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p2, Lcom/yelp/android/cl/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p2, Lcom/yelp/android/cl/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/cl/a$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/cl/a$1;-><init>(Lcom/yelp/android/cl/a;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 31
    .line 32
    iget-object v0, p0, Lcom/yelp/android/cl/a;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cl/a;->b:Landroid/view/LayoutInflater;

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/cl/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 37
    if-nez p2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/yelp/android/cl/a;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030154

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v1, Lcom/yelp/android/cl/a$a;

    invoke-direct {v1, p2}, Lcom/yelp/android/cl/a$a;-><init>(Landroid/view/View;)V

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/cl/a;->a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/cl/a$a;)V

    .line 45
    return-object p2

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/cl/a$a;

    goto :goto_0
.end method
