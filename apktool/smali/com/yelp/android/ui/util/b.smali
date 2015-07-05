.class public Lcom/yelp/android/ui/util/b;
.super Landroid/database/DataSetObserver;
.source "AdapterWrapperDataSetObserver.java"


# instance fields
.field private final a:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/ui/util/b;->a:Landroid/widget/BaseAdapter;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized onChanged()V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/util/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onInvalidated()V
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/util/b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
