.class final Lcom/yelp/android/ui/util/ScrollToLoadListView$c;
.super Ljava/lang/Object;
.source "ScrollToLoadListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ScrollToLoadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;->a:Ljava/lang/Runnable;

    .line 208
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/util/ScrollToLoadListView$c;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 212
    return-void
.end method
