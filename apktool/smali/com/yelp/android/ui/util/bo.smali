.class final Lcom/yelp/android/ui/util/bo;
.super Ljava/lang/Object;
.source "ScrollToLoadListView.java"


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/yelp/android/ui/util/bo;->a:Ljava/lang/Runnable;

    .line 218
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/util/bo;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 222
    return-void
.end method
