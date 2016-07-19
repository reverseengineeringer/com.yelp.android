.class Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies$1;
.super Ljava/lang/Object;
.source "ActivityMovies.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies$1;->a:Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies$1;->a:Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;->a(Lcom/yelp/android/ui/activities/businesspage/movies/ActivityMovies;)Lcom/yelp/android/ui/activities/businesspage/movies/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/movies/a$a;->d()V

    .line 101
    return-void
.end method
