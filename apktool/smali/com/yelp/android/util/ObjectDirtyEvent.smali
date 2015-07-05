.class public Lcom/yelp/android/util/ObjectDirtyEvent;
.super Ljava/lang/Object;
.source "ObjectDirtyEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DirtyObject::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDirtyObject;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TDirtyObject;>;"
        }
    .end annotation
.end field

.field public c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->c:I

    .line 71
    iput-object p2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->d:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->INTEGER:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    iput-object v0, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->e:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDirtyObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->a:Landroid/os/Parcelable;

    .line 65
    iput-object p2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->d:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->PARCELABLE:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    iput-object v0, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->e:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TDirtyObject;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->b:Ljava/util/ArrayList;

    .line 77
    iput-object p2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->d:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->PARCELABLE_LIST:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    iput-object v0, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->e:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    .line 79
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DirtyObject::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            ")TDirtyObject;"
        }
    .end annotation

    .prologue
    .line 106
    const-string/jumbo v0, "object"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The intent doesn\'t contain the parcelable object that you were expecting!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    const-string/jumbo v0, "object"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "integer"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The intent doesn\'t contain the int value that you were expecting!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const-string/jumbo v0, "integer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DirtyObject::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<TDirtyObject;>;"
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "object_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The intent doesn\'t contain the parcelable object list that you were expecting!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    const-string/jumbo v0, "object_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    sget-object v1, Lcom/yelp/android/util/t;->a:[I

    iget-object v2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->e:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    invoke-virtual {v2}, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    return-void

    .line 86
    :pswitch_0
    const-string/jumbo v1, "object"

    iget-object v2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 89
    :pswitch_1
    const-string/jumbo v1, "integer"

    iget v2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 92
    :pswitch_2
    const-string/jumbo v1, "object_list"

    iget-object v2, p0, Lcom/yelp/android/util/ObjectDirtyEvent;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
