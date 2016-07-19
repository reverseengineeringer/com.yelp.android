.class public Lcom/yelp/android/ui/activities/mutatebiz/c;
.super Landroid/os/AsyncTask;
.source "ShowWhileDoingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mutatebiz/c$b;,
        Lcom/yelp/android/ui/activities/mutatebiz/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParam;",
        "Ljava/lang/Void;",
        "TValue;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:[Landroid/view/View;

.field private final c:Lcom/yelp/android/ui/activities/mutatebiz/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/mutatebiz/c$a",
            "<TValue;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yelp/android/ui/activities/mutatebiz/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/mutatebiz/c$b",
            "<TParam;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/c$b;Lcom/yelp/android/ui/activities/mutatebiz/c$a;Landroid/view/View;[Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/mutatebiz/c$b",
            "<TParam;TValue;>;",
            "Lcom/yelp/android/ui/activities/mutatebiz/c$a",
            "<TValue;>;",
            "Landroid/view/View;",
            "[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    .line 48
    iput-object p4, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->b:[Landroid/view/View;

    .line 49
    iput-object p2, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->c:Lcom/yelp/android/ui/activities/mutatebiz/c$a;

    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->d:Lcom/yelp/android/ui/activities/mutatebiz/c$b;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParam;)TValue;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->d:Lcom/yelp/android/ui/activities/mutatebiz/c$b;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/c$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->b:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 90
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->c:Lcom/yelp/android/ui/activities/mutatebiz/c$a;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->c:Lcom/yelp/android/ui/activities/mutatebiz/c$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/c$a;->a(Ljava/lang/Object;)V

    .line 95
    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 56
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->b:[Landroid/view/View;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 67
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_1
    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/c;->a:Landroid/view/View;

    goto :goto_0

    .line 69
    :cond_2
    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_3
    return-void
.end method
