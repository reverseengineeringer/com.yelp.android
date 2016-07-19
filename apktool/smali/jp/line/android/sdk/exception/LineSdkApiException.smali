.class public Ljp/line/android/sdk/exception/LineSdkApiException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

.field public final httpStatusCode:I

.field public final serverError:Ljp/line/android/sdk/exception/a;


# direct methods
.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkApiError;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v2, v1}, Ljp/line/android/sdk/exception/LineSdkApiException;->a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

    iput v2, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->httpStatusCode:I

    iput-object v1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkApiError;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p3, p1, p2, v1}, Ljp/line/android/sdk/exception/LineSdkApiException;->a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

    iput p2, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->httpStatusCode:I

    iput-object v1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Ljp/line/android/sdk/exception/LineSdkApiException;->a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

    iput p2, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->httpStatusCode:I

    iput-object p3, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkApiError;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p1, v1, v2}, Ljp/line/android/sdk/exception/LineSdkApiException;->a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

    iput v1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->httpStatusCode:I

    iput-object v2, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkApiError;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v2, v1}, Ljp/line/android/sdk/exception/LineSdkApiException;->a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

    iput v2, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->httpStatusCode:I

    iput-object v1, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    return-void
.end method

.method private static final a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, " serverError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, " LineSdkApiError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_2

    const-string/jumbo v1, " httpStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final isAccessTokenExpired()Z
    .locals 3

    const/16 v2, 0x191

    iget-object v0, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->apiError:Ljp/line/android/sdk/exception/LineSdkApiError;

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->SERVER_ERROR:Ljp/line/android/sdk/exception/LineSdkApiError;

    if-ne v0, v1, :cond_1

    iget v0, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->httpStatusCode:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    iget v0, v0, Ljp/line/android/sdk/exception/a;->a:I

    const/16 v1, 0x19c

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljp/line/android/sdk/exception/LineSdkApiException;->serverError:Ljp/line/android/sdk/exception/a;

    iget v0, v0, Ljp/line/android/sdk/exception/a;->a:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
