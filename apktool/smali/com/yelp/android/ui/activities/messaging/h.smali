.class synthetic Lcom/yelp/android/ui/activities/messaging/h;
.super Ljava/lang/Object;
.source "ConversationThreadFragment.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 363
    invoke-static {}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->values()[Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/h;->b:[I

    :try_start_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->b:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 284
    :goto_4
    invoke-static {}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->values()[Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/h;->a:[I

    :try_start_5
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->a:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->a:[I

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->SEND_MESSAGE:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    .line 363
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
